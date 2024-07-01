#!/bin/bash
cd ~/maternal_loading/1.private_data/20221209_WGS/0_raw_data

mapping(){
    date=$2
    fastq_fi=$1
    fastq_name=${fastq_fi%%.R1.fastq.gz}
    # trim_galore --fastqc --fastqc_args "--outdir ./FastQC_OUT --nogroup -q" --paired ${fastq_name}.R1.fastq.gz ${fastq_name}.R2.fastq.gz --trim-n -o ./ --no_report_file --suppress_warn -j 8
    sample_name=${fastq_name%%_*}_${date}
    (bowtie2 -X 2000 -p 8 -x ~/source/bySpecies/danRer11_2/bowtie2/danRer11_2_main -1 ${fastq_name}.R1_val_1.fq.gz -2 ${fastq_name}.R2_val_2.fq.gz | samtools view -@ 8 -bS - > ../1_mapping/${sample_name}.bam) 2> ../1_mapping/Mapping_${sample_name}.log
}

mapping Npm2a-1k-2N_L3_M002.R1.fastq.gz 20221209
mapping Npm2a-1k-4N_L3_M004.R1.fastq.gz 20221209
mapping Npm2a-4-5h-2N_L3_M007.R1.fastq.gz 20221209
mapping Npm2a-4-5h-4N_L3_M012.R1.fastq.gz 20221209
mapping Npm2a-256-2N_L1_M002.R1.fastq.gz 20221209
mapping Npm2a-256-4N_L1_M004.R1.fastq.gz 20221209
mapping Npm2a-5-5h-1-2N_L1_M005.R1.fastq.gz 20221209
mapping Npm2a-5-5h-1-4N_L2_M006.R1.fastq.gz 20221209
mapping Npm2a-5-5h-2-2N_L2_M007.R1.fastq.gz 20221209
mapping Npm2a-5-5h-2-4N_L2_M012.R1.fastq.gz 20221209
