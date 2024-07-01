#!/bin/bash

##### ------ download inhouse data
cd ~/maternal_loading/1.private_data/20221209_WGS/0_raw_data
obsutil share-cp https://e-share.obs-website.cn-north-1.myhuaweicloud.com?token=0f/ZN2y93CL9wW6tfwBiHAcKwjgJcC9vhT5u3z2S1GoGMOmAr4zmuBobA/vIDTR26r3O0LIe82gRkxNjPZHnppPL81lAMTHEexQqAjtnLdbJTyUX3FOQYLuOeCytuJV4y+4kSuVFPIjJl8t/al/A2pLZ2c45oNd6aFy21mdCnn4qaQt4piKNPz2EhPumMrYBqauHGMvBkHgGZbq2lUtX1s3M+4OP+h6gpmT1YyYc7KPlMsGAIaduMunmXP0vEoQNGKwB+57+9wKFsWOvhcHg+e57t+0Fbk+989jwztiadrvA3FYpboNJwX7i7d5eB3HQUHqnTAm0ib3PvjGVQ+ETOPh84wZNRwvpsFSOZDDg/cOgIHhKe2yjlM+fMMG7RtCmQGX9sxWlh75gI1BC7W42XE9n1Ds4ZbPU7lCHlZA5qWZdrdSrx/Vky8RPOXaXXT3QKCyBzkMEFUZXn7MSvBdyemXjNSazFoLxUkg3jfl8SDcuE5b/A9EjWVyuZxoegP9gY+Ug5QItUHIJ5qRBd1JrNJSj0fJQPvLNniLlJVkBYnDTWlLsWiO4tTilHS1Ij3h5w19KtULlE59LhSPFyPpUZA== ./ -r -vmd5
obsutil share-cp https://e-share.obs-website.cn-north-1.myhuaweicloud.com?token=6izvXuPoPK7HnR70PQ2yvhZ95gIfJVdlH7g25RG9Xj+d1eMebkcb2K9pKrULIBGViWvbXhPEHy6EjkhQITH6/ixAamRTtH5PDeLT8xpif1A2egLruWwqwsB1EPkgGwp8H3ambqf+z7pID50DM8e30weTCLjJmkmjULgFM9KJcPk1LQgDHg5G5BSqTHRmTfE3KLGSgbPQ6VD6s8TXU6ZzApVnMETAdN+ZV3XEBnoz40k2y6VXQi3poZI//ZrEWRkdF5tnZF+Pw0HjmIDME1SqcYpHiZkznavk81f8g6/R6YQ6v9uNbsQ6ckNK7nScF2HqhO34Sua/MWZxaHXWplJY938jY4k3KjCENOGk+IANb1rnRVD2iUSrKhQ+g//Quv/plKxZOM/MhZw4w8qTjZlJzL2Pjxq7GKOUsEF30UoRlU7C2LhkV5BPot8D7QywfMVrWQg4dWvzMvTP8px2+l39NSneOlksFsS5ekT/1gCl2jKPLVkfWfCNGF4deIyfg2bSRlFsV5cW3IaA35XpvSp1FVY91jPwCxI9Cpdl8oFMRTsBhGf62oJdN3+gKTMyMrlojxsP+rq0IbpcLLrlAB6lVGiCjxL7xX7UlXUEgOwkQQRxkdRuM9FdWyfHTL/6bFTPsxI5R2qeGGZitdNCrHt+dLBOtY2wU/Mlanr6CDcWz+Pm8NVF+h5I4VMN/cXVohZdnw4mRR3J0I6K8FNVfrxUQg== ./ -r -vmd5


##### ------ download public data
cd ~/maternal_loading/1.private_data/20221209_WGS
# YueLab-Input-embryonic-Trunk-rep1 | YueLab-Input-embryonic-Trunk-rep2 | YueLab-Input-embryonic-Brain-rep1 | YueLab-Input-embryonic-Brain-rep2
download_raw_seq.py -p PRJNA553572 -f 'SRR9662101|SRR9662102|SRR9662103|SRR9662104' -o 0_raw_data
cd 0_raw_data
bash PRJNA553572.sh



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

cd ~/maternal_loading/1.private_data/20221209_WGS/0_raw_data
mapping_public(){
    sra=$1
    name=$2
    trim_galore --fastqc --fastqc_args "--outdir ./FastQC_OUT --nogroup -q" --paired ${sra}_1.fastq.gz ${sra}_2.fastq.gz --trim-n -o ./ --no_report_file --suppress_warn -j 8
    (bowtie2 -X 2000 -p 8 -x ~/source/bySpecies/danRer11_2/bowtie2/danRer11_2_main -1 ${sra}_1_val_1.fq.gz -2 ${sra}_2_val_2.fq.gz | samtools view -@ 8 -bS - > ../1_mapping/${name}.bam) 2> ../1_mapping/Mapping_${name}.log
}
mapping_public SRR9662101 YueLab_Input_embryonic_Trunk_rep1
mapping_public SRR9662102 YueLab_Input_embryonic_Trunk_rep2
mapping_public SRR9662103 YueLab_Input_embryonic_Brain_rep1
mapping_public SRR9662104 YueLab_Input_embryonic_Brain_rep2

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

sort_index_bam YueLab_Input_embryonic_Brain_rep1.bam
sort_index_bam YueLab_Input_embryonic_Brain_rep2.bam
sort_index_bam YueLab_Input_embryonic_Trunk_rep1.bam
sort_index_bam YueLab_Input_embryonic_Trunk_rep2.bam



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

bam2bw YueLab_Input_embryonic_Brain_rep1.sorted.bam
bam2bw YueLab_Input_embryonic_Brain_rep2.sorted.bam
bam2bw YueLab_Input_embryonic_Trunk_rep1.sorted.bam
bam2bw YueLab_Input_embryonic_Trunk_rep2.sorted.bam


rename 's/20211216/20221216/' *20211216.bedGraph


##### ------ fragment length
cd ~/maternal_loading/1.private_data/20221209_WGS
fragment_length(){
    name=$1
    bamToBed -bedpe -i 1_mapping/${name}.bam | awk '$1 !~ /_/{if($2<$5) print $1"\t"$2"\t"$6; else print $1"\t"$5"\t"$3}'  | sort -S 1% -k1,1 -k2,2n | uniq > 2_signal/${name}_fragments.bed
    cut -f 1 2_signal/${name}_fragments.bed | sort -S 1% | uniq -c | sort -S 1% -k1,1rg | awk 'BEGIN{print "chromosome\tnumber"} {print $2"\t"$1}' > 2_signal/${name}_chromosome_distribution.txt
    awk '{print $3-$2}' 2_signal/${name}_fragments.bed | sort -S 1% | uniq -c | sort -S 1% -k2,2g | awk 'BEGIN{print "fragment_length\tnumber"} {print $2"\t"$1}' > 2_signal/${name}_fragments_length.txt
}
fragment_length YueLab_Input_embryonic_Brain_rep1
fragment_length YueLab_Input_embryonic_Brain_rep2
fragment_length YueLab_Input_embryonic_Trunk_rep1
fragment_length YueLab_Input_embryonic_Trunk_rep2
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

