#!/bin/bash

# cd ~/maternal_loading/1.private_data/20221209_WGS/0_raw_data/blast
# ln -s ../09/*/*.fastq.gz .
# blast_low_mapped_samples.py -d . -b ~/source/blast_db -n 1000 -@ 10 -m /mnt/Storage/home/wangyiman/maternal_loading/1.private_data/20221209_WGS/1_mapping/Mapping_Npm2a-1k-2N_20221209.log,/mnt/Storage/home/wangyiman/maternal_loading/1.private_data/20221209_WGS/1_mapping/Mapping_Npm2a-4-5h-2N_20221209.log,/mnt/Storage/home/wangyiman/maternal_loading/1.private_data/20221209_WGS/1_mapping/Mapping_Npm2a-5-5h-2-2N_20221209.log,/mnt/Storage/home/wangyiman/maternal_loading/1.private_data/20221209_WGS/1_mapping/Mapping_Npm2a-1k-4N_20221209.log,/mnt/Storage/home/wangyiman/maternal_loading/1.private_data/20221209_WGS/1_mapping/Mapping_Npm2a-4-5h-4N_20221209.log,/mnt/Storage/home/wangyiman/maternal_loading/1.private_data/20221209_WGS/1_mapping/Mapping_Npm2a-5-5h-2-4N_20221209.log,/mnt/Storage/home/wangyiman/maternal_loading/1.private_data/20221209_WGS/1_mapping/Mapping_Npm2a-256-2N_20221209.log,/mnt/Storage/home/wangyiman/maternal_loading/1.private_data/20221209_WGS/1_mapping/Mapping_Npm2a-5-5h-1-2N_20221209.log,/mnt/Storage/home/wangyiman/maternal_loading/1.private_data/20221209_WGS/1_mapping/Mapping_Npm2a-256-4N_20221209.log,/mnt/Storage/home/wangyiman/maternal_loading/1.private_data/20221209_WGS/1_mapping/Mapping_Npm2a-5-5h-1-4N_20221209.log


# cd ~/maternal_loading/1.private_data/20221209_WGS/1_mapping
# sort_index_bam(){
#     bamfi=$1
#     bam_name=$(basename ${bamfi})
#     samtools sort -@ 8 ${bamfi} -o ${bam_name}.sorted.bam
#     samtools index -@ 8 ${bam_name}.sorted.bam
# }
# sort_index_bam Npm2a-1k-2N_20211216.bam
# sort_index_bam Npm2a-1k-4N_20211216.bam
# sort_index_bam Npm2a-256-2N_20211216.bam
# sort_index_bam Npm2a-256-4N_20211216.bam
# sort_index_bam Npm2a-4-5h-1-2N_20211216.bam
# sort_index_bam Npm2a-4-5h-1-4N_20211216.bam
# sort_index_bam Npm2a-4-5h-2-2N_20211216.bam
# sort_index_bam Npm2a-4-5h-2-4N_20211216.bam


# ploidy(){
#     cd ~/maternal_loading/1.private_data/20221209_WGS/3_ploidy
#     bamfi=$1
#     base1=$(basename ${bamfi})
#     base=${base1%%.bam}
#     nQuire create -b $bamfi -o $base -x
# }
# ploidy ~/maternal_loading/1.private_data/20221209_WGS/1_mapping/Npm2a-1k-2N_20221209.bam.sorted.bam

# cd ~/maternal_loading/1.private_data/20221209_WGS/1_mapping

# bam2bw(){
#     sorted_bamfi=$1
#     bam_name=${sorted_bamfi%%.*}
#     danRer11_2_main=~/source/bySpecies/danRer11_2/chromSizes/danRer11_2_main.chrom.sizes
#     bedtools genomecov -ibam $sorted_bamfi -bg -scale 1 > ../2_signal/${bam_name}.bedGraph
#     bedGraphToBigWig ../2_signal/${bam_name}.bedGraph $danRer11_2_main ../2_signal/${bam_name}.bw
# }
# bam2bw Npm2a-1k-2N_20211216.bam.sorted.bam
# bam2bw Npm2a-1k-4N_20211216.bam.sorted.bam
# bam2bw Npm2a-256-2N_20211216.bam.sorted.bam
# bam2bw Npm2a-256-4N_20211216.bam.sorted.bam
# bam2bw Npm2a-4-5h-1-2N_20211216.bam.sorted.bam
# bam2bw Npm2a-4-5h-1-4N_20211216.bam.sorted.bam
# bam2bw Npm2a-4-5h-2-2N_20211216.bam.sorted.bam
# bam2bw Npm2a-4-5h-2-4N_20211216.bam.sorted.bam

# cd ~/maternal_loading/1.private_data/20221209_WGS/0_raw_data

# mapping(){
#     date=$2
#     fastq_fi=$1
#     fastq_name=${fastq_fi%%.R1.fastq.gz}
#     # trim_galore --fastqc --fastqc_args "--outdir ./FastQC_OUT --nogroup -q" --paired ${fastq_name}.R1.fastq.gz ${fastq_name}.R2.fastq.gz --trim-n -o ./ --no_report_file --suppress_warn -j 8
#     sample_name=${fastq_name%%_*}_${date}
#     (bowtie2 -X 2000 -p 10 -x ~/source/bySpecies/danRer11_2/bowtie2/danRer11_2_main -1 ${fastq_name}.R1_val_1.fq.gz -2 ${fastq_name}.R2_val_2.fq.gz | samtools view -@ 10 -bS - > ../1_mapping/${sample_name}.bam) 2> ../1_mapping/Mapping_${sample_name}.log
# }
# mapping Npm2a-1k-2N_L2_M005.R1.fastq.gz 20221216
# mapping Npm2a-1k-4N_L2_M006.R1.fastq.gz 20221216
# mapping Npm2a-256-2N_L4_M002.R1.fastq.gz 20221216
# mapping Npm2a-256-4N_L2_M004.R1.fastq.gz 20221216
# mapping Npm2a-4-5h-1-2N_L3_M007.R1.fastq.gz 20221216
# mapping Npm2a-4-5h-1-4N_L2_M012.R1.fastq.gz 20221216
# mapping Npm2a-4-5h-2-2N_L2_913.R1.fastq.gz 20221216
# mapping Npm2a-4-5h-2-4N_L2_914.R1.fastq.gz 20221216


cd ~/maternal_loading/1.private_data/20221209_WGS/1_mapping

sort_index_bam(){
    bamfi=$1
    bam_name1=$(basename ${bamfi})
    bam_name=${bam_name1%%.*}
    samtools sort -@ 8 ${bamfi} -o ${bam_name}.sorted.bam
    samtools index -@ 8 ${bam_name}.sorted.bam
}
# sort_index_bam Npm2a-1k-2N_20221216.bam
# sort_index_bam Npm2a-1k-4N_20221216.bam
# sort_index_bam Npm2a-256-2N_20221216.bam
# sort_index_bam Npm2a-256-4N_20221216.bam
# sort_index_bam Npm2a-4-5h-1-2N_20221216.bam
# sort_index_bam Npm2a-4-5h-1-4N_20221216.bam
# sort_index_bam Npm2a-4-5h-2-2N_20221216.bam
# sort_index_bam Npm2a-4-5h-2-4N_20221216.bam

# sort_index_bam Npm2a-1k-2N_20221209.bam
# sort_index_bam Npm2a-1k-4N_20221209.bam
# sort_index_bam Npm2a-256-2N_20221209.bam
# sort_index_bam Npm2a-256-4N_20221209.bam
# sort_index_bam Npm2a-4-5h-2N_20221209.bam
# sort_index_bam Npm2a-4-5h-4N_20221209.bam
# sort_index_bam Npm2a-5-5h-1-2N_20221209.bam
# sort_index_bam Npm2a-5-5h-1-4N_20221209.bam
# sort_index_bam Npm2a-5-5h-2-2N_20221209.bam
sort_index_bam Npm2a-5-5h-2-4N_20221209.bam

cd ~/maternal_loading/1.private_data/20221209_WGS/1_mapping

bam2bw(){
    sorted_bamfi=$1
    bam_name=${sorted_bamfi%%.*}
    danRer11_2_main=~/source/bySpecies/danRer11_2/chromSizes/danRer11_2_main.chrom.sizes
    bedtools genomecov -ibam $sorted_bamfi -bg -scale 1 > ../2_signal/${bam_name}.bedGraph
    bedGraphToBigWig ../2_signal/${bam_name}.bedGraph $danRer11_2_main ../2_signal/${bam_name}.bw
}
# bam2bw Npm2a-1k-2N_20221216.sorted.bam
# bam2bw Npm2a-1k-4N_20221216.sorted.bam
# bam2bw Npm2a-256-2N_20221216.sorted.bam
# bam2bw Npm2a-256-4N_20221216.sorted.bam
# bam2bw Npm2a-4-5h-1-2N_20221216.sorted.bam
# bam2bw Npm2a-4-5h-1-4N_20221216.sorted.bam
# bam2bw Npm2a-4-5h-2-2N_20221216.sorted.bam
# bam2bw Npm2a-4-5h-2-4N_20221216.sorted.bam

# bam2bw Npm2a-1k-2N_20221209.sorted.bam
# bam2bw Npm2a-1k-4N_20221209.sorted.bam
# bam2bw Npm2a-256-2N_20221209.sorted.bam
# bam2bw Npm2a-256-4N_20221209.sorted.bam
# bam2bw Npm2a-4-5h-2N_20221209.sorted.bam
# bam2bw Npm2a-4-5h-4N_20221209.sorted.bam
# bam2bw Npm2a-5-5h-1-2N_20221209.sorted.bam
# bam2bw Npm2a-5-5h-1-4N_20221209.sorted.bam
bam2bw Npm2a-5-5h-2-2N_20221209.sorted.bam
bam2bw Npm2a-5-5h-2-4N_20221209.sorted.bam

