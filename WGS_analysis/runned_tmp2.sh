#!/bin/bash

# cd ~/maternal_loading/1.private_data/20221209_WGS/0_raw_data
# mapping_public(){
#     sra=$1
#     name=$2
#     trim_galore --fastqc --fastqc_args "--outdir ./FastQC_OUT --nogroup -q" --paired ${sra}_1.fastq.gz ${sra}_2.fastq.gz --trim-n -o ./ --no_report_file --suppress_warn -j 8
#     (bowtie2 -X 2000 -p 10 -x ~/source/bySpecies/danRer11_2/bowtie2/danRer11_2_main -1 ${sra}_1_val_1.fq.gz -2 ${sra}_2_val_2.fq.gz | samtools view -@ 8 -bS - > ../1_mapping/${name}.bam) 2> ../1_mapping/Mapping_${name}.log
# }
# mapping_public SRR9662101 YueLab_Input_embryonic_Trunk_rep1
# mapping_public SRR9662102 YueLab_Input_embryonic_Trunk_rep2
# mapping_public SRR9662103 YueLab_Input_embryonic_Brain_rep1
# mapping_public SRR9662104 YueLab_Input_embryonic_Brain_rep2

# cd ~/maternal_loading/1.private_data/20221209_WGS/1_mapping
# sort_index_bam(){
#     bamfi=$1
#     bam_name1=$(basename ${bamfi})
#     bam_name=${bam_name1%%.*}
#     samtools sort -@ 10 ${bamfi} -o ${bam_name}.sorted.bam
#     samtools index -@ 10 ${bam_name}.sorted.bam
# }

# sort_index_bam YueLab_Input_embryonic_Brain_rep1.bam
# sort_index_bam YueLab_Input_embryonic_Brain_rep2.bam
# sort_index_bam YueLab_Input_embryonic_Trunk_rep1.bam
# sort_index_bam YueLab_Input_embryonic_Trunk_rep2.bam

# cd ~/maternal_loading/1.private_data/20221209_WGS/1_mapping

# bam2bw(){
#     sorted_bamfi=$1
#     bam_name=${sorted_bamfi%%.*}
#     danRer11_2_main=~/source/bySpecies/danRer11_2/chromSizes/danRer11_2_main.chrom.sizes
#     bedtools genomecov -ibam $sorted_bamfi -bg -scale 1 > ../2_signal/${bam_name}.bedGraph
#     bedGraphToBigWig ../2_signal/${bam_name}.bedGraph $danRer11_2_main ../2_signal/${bam_name}.bw
# }
# bam2bw YueLab_Input_embryonic_Brain_rep1.sorted.bam
# bam2bw YueLab_Input_embryonic_Brain_rep2.sorted.bam
# bam2bw YueLab_Input_embryonic_Trunk_rep1.sorted.bam
# bam2bw YueLab_Input_embryonic_Trunk_rep2.sorted.bam


cd ~/maternal_loading/1.private_data/20221209_WGS

fragment_length(){
    name=$1
    bamToBed -bedpe -i 1_mapping/${name}.bam | awk '$1 !~ /_/{if($2<$5) print $1"\t"$2"\t"$6; else print $1"\t"$5"\t"$3}'  | sort -S 1% -k1,1 -k2,2n | uniq > 2_signal/${name}_fragments.bed
    cut -f 1 2_signal/${name}_fragments.bed | sort -S 1% | uniq -c | sort -S 1% -k1,1rg | awk 'BEGIN{print "chromosome\tnumber"} {print $2"\t"$1}' > 2_signal/${name}_chromosome_distribution.txt
    awk '{print $3-$2}' 2_signal/${name}_fragments.bed | sort -S 1% | uniq -c | sort -S 1% -k2,2g | awk 'BEGIN{print "fragment_length\tnumber"} {print $2"\t"$1}' > 2_signal/${name}_fragments_length.txt
}
# fragment_length YueLab_Input_embryonic_Brain_rep1
# fragment_length YueLab_Input_embryonic_Brain_rep2
# fragment_length YueLab_Input_embryonic_Trunk_rep1
# fragment_length YueLab_Input_embryonic_Trunk_rep2

# fragment_length Npm2a-1k-2N_20221216
# fragment_length Npm2a-1k-4N_20221216
# fragment_length Npm2a-256-2N_20221216
# fragment_length Npm2a-256-4N_20221216
# fragment_length Npm2a-4-5h-1-2N_20221216
# fragment_length Npm2a-4-5h-1-4N_20221216
# fragment_length Npm2a-4-5h-2-2N_20221216
# fragment_length Npm2a-4-5h-2-4N_20221216

fragment_length Npm2a-1k-2N_20221209
fragment_length Npm2a-1k-4N_20221209
fragment_length Npm2a-256-2N_20221209
fragment_length Npm2a-256-4N_20221209
fragment_length Npm2a-4-5h-2N_20221209
fragment_length Npm2a-4-5h-4N_20221209
fragment_length Npm2a-5-5h-1-2N_20221209
fragment_length Npm2a-5-5h-1-4N_20221209
fragment_length Npm2a-5-5h-2-2N_20221209
fragment_length Npm2a-5-5h-2-4N_20221209
