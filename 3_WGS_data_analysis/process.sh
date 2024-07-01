#!/bin/bash

##### ------ mapping
cd ~/maternal_loading/1.private_data/20221209_WGS/0_raw_data
ln -s 09/22*/*.fastq.gz .
for fastq_fi in $(ls *R1.fastq.gz);do
    fastq_name=${fastq_fi%%.R1.fastq.gz}
    trim_galore --fastqc --fastqc_args "--outdir ./FastQC_OUT --nogroup -q" --paired ${fastq_name}.R1.fastq.gz ${fastq_name}.R2.fastq.gz --trim-n -o ./ --no_report_file --suppress_warn -j 8
    sample_name=${fastq_name%%_*}_20221209
    (bowtie2 -X 2000 -p 8 -x ~/source/bySpecies/danRer11_2/bowtie2/danRer11_2_main -1 ${fastq_name}.R1_val_1.fq.gz -2 ${fastq_name}.R2_val_2.fq.gz | samtools view -@ 8 -bS - > ../1_mapping/${sample_name}.bam) 2> ../1_mapping/Mapping_${sample_name}.log
done

ln -s 221213_A00679_0854_AH2HKCDSX5/*.fastq.gz .
mapping(){
    date=$2
    fastq_fi=$1
    fastq_name=${fastq_fi%%.R1.fastq.gz}
    trim_galore --fastqc --fastqc_args "--outdir ./FastQC_OUT --nogroup -q" --paired ${fastq_name}.R1.fastq.gz ${fastq_name}.R2.fastq.gz --trim-n -o ./ --no_report_file --suppress_warn -j 8
    sample_name=${fastq_name%%_*}_${date}
    (bowtie2 -X 2000 -p 8 -x ~/source/bySpecies/danRer11_2/bowtie2/danRer11_2_main -1 ${fastq_name}.R1_val_1.fq.gz -2 ${fastq_name}.R2_val_2.fq.gz | samtools view -@ 8 -bS - > ../1_mapping/${sample_name}.bam) 2> ../1_mapping/Mapping_${sample_name}.log
}
mapping Npm2a-1k-2N_L2_M005.R1.fastq.gz 20221216
mapping Npm2a-1k-4N_L2_M006.R1.fastq.gz 20221216
mapping Npm2a-256-2N_L4_M002.R1.fastq.gz 20221216
mapping Npm2a-256-4N_L2_M004.R1.fastq.gz 20221216
mapping Npm2a-4-5h-1-2N_L3_M007.R1.fastq.gz 20221216
mapping Npm2a-4-5h-1-4N_L2_M012.R1.fastq.gz 20221216
mapping Npm2a-4-5h-2-2N_L2_913.R1.fastq.gz 20221216
mapping Npm2a-4-5h-2-4N_L2_914.R1.fastq.gz 20221216

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

rename 's/20211216/20221216/' *20211216.log
rename 's/20211216/20221216/' *20211216.bam
rename 's/20211216/20221216/' *20211216.bam.sorted.bam
rename 's/20211216/20221216/' *20211216.bam.sorted.bam.bai


##### ------ sort & index bam
cd ~/maternal_loading/1.private_data/20221209_WGS/1_mapping
for bamfi in $(ls *.bam);do
    bam_name1=$(basename ${bamfi})
    bam_name=${bam_name1%%.*}
    samtools sort ${bamfi} -o ${bam_name}.sorted.bam
    samtools index ${bam_name}.sorted.bam
done

sort_index_bam(){
    bamfi=$1
    bam_name1=$(basename ${bamfi})
    bam_name=${bam_name1%%.*}
    samtools sort -@ 8 ${bamfi} -o ${bam_name}.sorted.bam
    samtools index -@ 8 ${bam_name}.sorted.bam
}
sort_index_bam Npm2a-1k-2N_20221216.bam
sort_index_bam Npm2a-1k-4N_20221216.bam
sort_index_bam Npm2a-256-2N_20221216.bam
sort_index_bam Npm2a-256-4N_20221216.bam
sort_index_bam Npm2a-4-5h-1-2N_20221216.bam
sort_index_bam Npm2a-4-5h-1-4N_20221216.bam
sort_index_bam Npm2a-4-5h-2-2N_20221216.bam
sort_index_bam Npm2a-4-5h-2-4N_20221216.bam

sort_index_bam Npm2a-1k-2N_20221209.bam
sort_index_bam Npm2a-1k-4N_20221209.bam
sort_index_bam Npm2a-256-2N_20221209.bam
sort_index_bam Npm2a-256-4N_20221209.bam
sort_index_bam Npm2a-4-5h-2N_20221209.bam
sort_index_bam Npm2a-4-5h-4N_20221209.bam
sort_index_bam Npm2a-5-5h-1-2N_20221209.bam
sort_index_bam Npm2a-5-5h-1-4N_20221209.bam
sort_index_bam Npm2a-5-5h-2-2N_20221209.bam
sort_index_bam Npm2a-5-5h-2-4N_20221209.bam


##### ------ bam to bigWig
cd ~/maternal_loading/1.private_data/20221209_WGS/1_mapping
mkdir -p ../2_signal
for bamfi in $(ls *.sorted.bam);do
    bam_name=$(basename ${bamfi})
    # RPM (`-scale 1` means reads per 1 million)
    bedtools genomecov -ibam $bamfi -bg -scale 1 > ../2_signal/${bam_name}.bedGraph
    danRer11_2_main=~/source/bySpecies/danRer11_2/chromSizes/danRer11_2_main.chrom.sizes
    bedGraphToBigWig ../2_signal/${bam_name}.bedGraph $danRer11_2_main ../2_signal/${bam_name}.bw
done

for fi in $(ls *20221209.bam.sorted.bam.bedGraph);do
    name=${fi%%.*}
    mv $fi ${name}.bedGraph
done
for fi in $(ls *20221209.bam.sorted.bam.bw);do
    name=${fi%%.*}
    mv $fi ${name}.bw
done

bam2bw(){
    sorted_bamfi=$1
    bam_name=${sorted_bamfi%%.*}
    danRer11_2_main=~/source/bySpecies/danRer11_2/chromSizes/danRer11_2_main.chrom.sizes
    bedtools genomecov -ibam $sorted_bamfi -bg -scale 1 > ../2_signal/${bam_name}.bedGraph
    bedGraphToBigWig ../2_signal/${bam_name}.bedGraph $danRer11_2_main ../2_signal/${bam_name}.bw
}
bam2bw Npm2a-1k-2N_20221216.sorted.bam
bam2bw Npm2a-1k-4N_20221216.sorted.bam
bam2bw Npm2a-256-2N_20221216.sorted.bam
bam2bw Npm2a-256-4N_20221216.sorted.bam
bam2bw Npm2a-4-5h-1-2N_20221216.sorted.bam
bam2bw Npm2a-4-5h-1-4N_20221216.sorted.bam
bam2bw Npm2a-4-5h-2-2N_20221216.sorted.bam
bam2bw Npm2a-4-5h-2-4N_20221216.sorted.bam

bam2bw Npm2a-1k-2N_20221209.sorted.bam
bam2bw Npm2a-1k-4N_20221209.sorted.bam
bam2bw Npm2a-256-2N_20221209.sorted.bam
bam2bw Npm2a-256-4N_20221209.sorted.bam
bam2bw Npm2a-4-5h-2N_20221209.sorted.bam
bam2bw Npm2a-4-5h-4N_20221209.sorted.bam
bam2bw Npm2a-5-5h-1-2N_20221209.sorted.bam
bam2bw Npm2a-5-5h-1-4N_20221209.sorted.bam

rename 's/20211216/20221216/' *20211216.bedGraph


##### ------ fragment length
cd ~/maternal_loading/1.private_data/20221209_WGS
fragment_length(){
    name=$1
    bamToBed -bedpe -i 1_mapping/${name}.bam | awk '$1 !~ /_/{if($2<$5) print $1"\t"$2"\t"$6; else print $1"\t"$5"\t"$3}'  | sort -S 1% -k1,1 -k2,2n | uniq > 2_signal/${name}_fragments.bed
    cut -f 1 2_signal/${name}_fragments.bed | sort -S 1% | uniq -c | sort -S 1% -k1,1rg | awk 'BEGIN{print "chromosome\tnumber"} {print $2"\t"$1}' > 2_signal/${name}_chromosome_distribution.txt
    awk '{print $3-$2}' 2_signal/${name}_fragments.bed | sort -S 1% | uniq -c | sort -S 1% -k2,2g | awk 'BEGIN{print "fragment_length\tnumber"} {print $2"\t"$1}' > 2_signal/${name}_fragments_length.txt
}

fragment_length Npm2a-1k-2N_20221216
fragment_length Npm2a-1k-4N_20221216
fragment_length Npm2a-256-2N_20221216
fragment_length Npm2a-256-4N_20221216
fragment_length Npm2a-4-5h-1-2N_20221216
fragment_length Npm2a-4-5h-1-4N_20221216
fragment_length Npm2a-4-5h-2-2N_20221216
fragment_length Npm2a-4-5h-2-4N_20221216

##### ------ blast
blast_low_mapped_samples.py -d <fastq_dir> -b <blast_db> -n [select_reads_number] -@ [blast_threads] -m [mapping_log_files]

cd ~/maternal_loading/1.private_data/20221209_WGS/0_raw_data/blast
ln -s ../*.fastq.gz .
blast_low_mapped_samples.py -d . -b ~/source/blast_db -n 1000 -@ 10 -m /mnt/Storage/home/wangyiman/maternal_loading/1.private_data/20221209_WGS/1_mapping/Mapping_Npm2a-1k-2N_20221209.log,/mnt/Storage/home/wangyiman/maternal_loading/1.private_data/20221209_WGS/1_mapping/Mapping_Npm2a-4-5h-2N_20221209.log,/mnt/Storage/home/wangyiman/maternal_loading/1.private_data/20221209_WGS/1_mapping/Mapping_Npm2a-5-5h-2-2N_20221209.log,/mnt/Storage/home/wangyiman/maternal_loading/1.private_data/20221209_WGS/1_mapping/Mapping_Npm2a-1k-4N_20221209.log,/mnt/Storage/home/wangyiman/maternal_loading/1.private_data/20221209_WGS/1_mapping/Mapping_Npm2a-4-5h-4N_20221209.log,/mnt/Storage/home/wangyiman/maternal_loading/1.private_data/20221209_WGS/1_mapping/Mapping_Npm2a-5-5h-2-4N_20221209.log,/mnt/Storage/home/wangyiman/maternal_loading/1.private_data/20221209_WGS/1_mapping/Mapping_Npm2a-256-2N_20221209.log,/mnt/Storage/home/wangyiman/maternal_loading/1.private_data/20221209_WGS/1_mapping/Mapping_Npm2a-5-5h-1-2N_20221209.log,/mnt/Storage/home/wangyiman/maternal_loading/1.private_data/20221209_WGS/1_mapping/Mapping_Npm2a-256-4N_20221209.log,/mnt/Storage/home/wangyiman/maternal_loading/1.private_data/20221209_WGS/1_mapping/Mapping_Npm2a-5-5h-1-4N_20221209.log


##### ------ chromosome ploidy
nQuire create -b input.bam -o base -x

ploidy(){
    cd ~/maternal_loading/1.private_data/20221209_WGS/3_ploidy
    bamfi=$1
    base1=$(basename ${bamfi})
    base=${base1%%.bam}
    nQuire create -b $bamfi -o $base -x
}
ploidy ~/maternal_loading/1.private_data/20221209_WGS/1_mapping/Npm2a-1k-2N_20221209.bam.sorted.bam


##### ------ chrom coverage
conda install -c bioconda mosdepth
mosdepth -n --fast-mode --by 500 sample.wgs $sample.wgs.cram

