#!/usr/bin/env python3

# blast_low_mapped_samples.py -d <fastq_dir> -b <blast_db> -n [select_reads_number] -@ [blast_threads] -m [mapping_log_files]


import argparse
import logging

import numpy as np
import pandas as pd

import matplotlib as mpl
mpl.rcParams['pdf.fonttype'] = 42
mpl.rcParams['ps.fonttype'] = 42
mpl.rcParams['font.sans-serif'] = 'Arial'
import matplotlib.pyplot as plt
import seaborn as sns
from pprint import pprint

import os
import sys
import subprocess

from random import choice
from collections import defaultdict

def generate_opt() -> argparse.ArgumentParser:
    parser = argparse.ArgumentParser()
    parser.add_argument('-d', "--fastq_dir", action="store", type=str, dest="fastq_dir", required=True, help="Directory to raw data fastq files\n")
    parser.add_argument('-b', "--blast_db",  action="store", type=str, dest="blast_db",  required=True, help="Directory to blast database\n")
    parser.add_argument('-n', "--select_reads_number",  action="store", type=int, default=10000, dest="select_reads_number",help="Number of reads selected for each sample to blast; default: 1000.\n")
    parser.add_argument('-@', "--blast_threads",        action="store", type=int, default=10,    dest="blast_threads",      help="Number of threads using for blastn; default: 10.\n")
    parser.add_argument('-m', "--mapping_log_files",    action="store", type=str, default="F",   dest="mapping_log_dir",    help="Mapping log files, seperated by comma if you want to show align ratios in figure; the order of log files must correspond to the order of files in your fastq directory; default 'F' is not use.\n")
    return parser

def validate_opt(args:argparse.ArgumentParser):
    # create logger
    logger_name = "blast"
    logger = logging.getLogger(logger_name)
    logger.setLevel(logging.DEBUG)

    sh=logging.StreamHandler()
    sh.setLevel(logging.DEBUG)

    fmt = "%(asctime)-15s %(levelname)s %(name)s : pid - %(process)d :  %(message)s"
    datefmt = "#%a %d %b %Y %H:%M:%S"
    formatter = logging.Formatter(fmt, datefmt)
    sh.setFormatter(formatter)
    logger.addHandler(sh)

    flag=True
    if not os.path.isdir(args.fastq_dir):
        logger.error(f"Input fastq directory {args.fastq_dir} is not exist! ")
        flag=False
    elif not os.path.isdir(args.blast_db):
        logger.error(f"Input blast database directory {args.blast_db} is not exist! ")
        flag=False

    if not flag:
        sys.exit(1)

    return args



def make_work_env(fastq_dir, blast_db) :
    os.chdir(fastq_dir)
    try:
        os.makedirs("blast")
    except FileExistsError:
        # directory already exists
        pass

    if blast_db.endswith('/') :
        blast_db = blast_db[:-1]

    os.chdir(f'{fastq_dir}/blast')
    for file_name in os.listdir(os.path.expanduser(blast_db)):
        src = os.path.expanduser(blast_db + '/' + file_name)
        dst = file_name
        if not os.path.isfile(dst):
            os.symlink(src, dst)

    return


def alignment_process(lines):
    max_score = max(float(line[2]) for line in lines)
    organisms = [line[-1] for line in lines if float(line[2]) == max_score]
    return choice(organisms)



def run_blast_and_plot_bar(fastq_dir, select_reads_number, blast_threads, mapping_log_dir) :
    print(fastq_dir)
    samples = sorted([x for x in os.listdir(fastq_dir) if x.endswith('1.fq.gz') or x.endswith('1.fastq.gz')])
    print(f'{select_reads_number} reads selected.')
    if mapping_log_dir != 'F' :
        mapping_log_fis = mapping_log_dir.split(',')
    with sns.axes_style('whitegrid'), sns.plotting_context('paper'):
        for index, sample in enumerate(samples):
            cmd = f'''zcat {fastq_dir}/{sample} | head -{select_reads_number*4} | awk 'NR % 4 == 1{{print ">"substr($$0,2,length($$0))}} NR % 4 == 2{{print $$0}}' > blast.tmp.fa'''
            subprocess.call(cmd, shell=True)
            cmd = f"blastn -db nt -query blast.tmp.fa -out blast_output_sample{index}.txt -outfmt '6 qseqid evalue bitscore staxid ssciname scomname' -num_threads {blast_threads}"
            subprocess.call(cmd, shell=True)
            with open(f'blast_output_sample{index}.txt') as fhd:
                spicies = defaultdict(int)
                line = next(fhd)
                line = line.strip().split('\t')
                lines, name = [line], line[0]
                for line in fhd:
                    line = line.strip().split('\t')
                    if line[0] != name:
                        spicies[alignment_process(lines)] += 1
                        lines, name = [line], line[0]
                    else:
                        lines.append(line)

                spicies[alignment_process(lines)] += 1

            organisms = [x[0] for x in sorted(spicies.items(), key=lambda x: x[1], reverse=True)[:10]]
            percentages = [x[1]/select_reads_number*100 for x in sorted(spicies.items(), key=lambda x: x[1], reverse=True)[:10]]
            spicies = {'organism': organisms, 'pecentage': percentages}
            fig, ax = plt.subplots(figsize=(8,6))
            sns.barplot(x='organism',y='pecentage',data=spicies,ax=ax)
            title = sample.split('.')[0]
            ax.set_xticklabels(spicies['organism'],rotation='vertical')
            if mapping_log_dir != 'F' :
                with open(mapping_log_fis[index]) as fhd:
                    for line in fhd:
                        if 'overall alignment rate' in line:
                            ar = line.strip().split()[0]

                ax.set_title(f'{title} (alignment rate: {ar})')
                ax.set_ylabel('Percentage')

            fig.tight_layout()
            fig.savefig(f'barplot_blast_species_{title}.pdf')
            plt.close()

    print('run_blast done')
    return





if __name__ == '__main__':
    opt = generate_opt()
    args = opt.parse_args()
    validate_opt(args)
    fastq_dir = os.path.abspath(args.fastq_dir)
    blast_db = os.path.abspath(args.blast_db)
    make_work_env(fastq_dir, blast_db)
    run_blast_and_plot_bar(fastq_dir, args.select_reads_number, args.blast_threads, args.mapping_log_dir)
