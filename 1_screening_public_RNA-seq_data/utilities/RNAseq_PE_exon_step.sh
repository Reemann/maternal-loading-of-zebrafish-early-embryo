#! /bin/bash

function print_help {
    echo "$0 <name> <step,+> <processer> <genomeVersion> <R1.fastq.gz,+> <R2.fastq.gz,+> <ensGene|refGene>"
}
function join_by {
    local IFS="$1"; shift; echo "$*"
}
function reads_file_process {
    sampleReadFiles1=()
    sampleReadFiles2=()
    for i in `seq $(($#/2))`; do sampleReadFiles1+=(${@:$i:1}); done
    for i in `seq $(($#/2+1)) $#`; do sampleReadFiles2+=(${@:$i:1}); done
    trim_galore_input=()
    for index in ${!sampleReadFiles1[@]}; do trim_galore_input+=(0_raw_data/${sampleReadFiles1[$index]} 0_raw_data/${sampleReadFiles2[$index]}); done
    filteredReads1=()
    for readFile in ${sampleReadFiles1[@]}; do splitFileName=`echo ${readFile%.*}`; splitFileName=`echo ${splitFileName%.*}`; filteredReads1+=(0_raw_data/${splitFileName}_val_1.fq.gz); done
    mapping_input_file1=`join_by , ${filteredReads1[@]}`
    filteredReads2=()
    for readFile in ${sampleReadFiles2[@]}; do splitFileName=`echo ${readFile%.*}`; splitFileName=`echo ${splitFileName%.*}`; filteredReads2+=(0_raw_data/${splitFileName}_val_2.fq.gz); done
    mapping_input_file2=`join_by , ${filteredReads2[@]}`
}
function bedToBigWig {
    n=`cut -f 4 ${3}.bed | sort -S 1% | uniq | wc -l` && \
    c=`bc -l <<< "1000000 / ${n}"` && \
    sort -S 1% -k1,1 -k2,2n ${1}.bed | genomeCoverageBed -bga -scale $c -i - -g ~/source/bySpecies/${genomeVersion}/chromSizes/${genomeVersion}.chrom.sizes > ${1}.bdg && \
    ~/bin/utilities/bdg2bw.sh ${1}.bdg ~/source/bySpecies/${genomeVersion}/chromSizes/${genomeVersion}_main.chrom.sizes ${2} && \
    rm ${1}.bdg
}
function compress_bed {
    bedFile=${1}
    genomeVersion=${2}
    col=`head -1 ${bedFile} | awk '{print NF}'`
    plus=`bc <<< "$col -3"`
    intersectBed -a ${bedFile} -b <(awk '{print $1"\t0\t"$2}' ~/source/bySpecies/${genomeVersion}/chromSizes/${genomeVersion}.chrom.sizes) -wa -f 1.00 | sort -k1,1 -k2,2n > ${bedFile}.tmp
    bedToBigBed -type=bed3+${plus} ${bedFile}.tmp ~/source/bySpecies/${genomeVersion}/chromSizes/${genomeVersion}.chrom.sizes ${bedFile::(${#bedFile}-2)}b
    rm ${bedFile} ${bedFile}.tmp
}

# ----- parameters -----
if [[ $# -lt 7 ]]; then
    echo No enought parameters!
    print_help
    exit 1
fi

name=${1}
step=${2}
processer=${3}
genomeVersion=${4}
reads1=${5}
reads2=${6}
annotation=${7} # "ensGene" or "reGene"

mkdir -p 0_raw_data/FastQC_OUT 1_mapping 2_expression_value_ExonUniq 3_signal 4_basic_QC

# MY_PATH="`dirname \"$0\"`"

IFS=',' read -r -a stepNums <<< ${step}

IFS=',' read -r -a readsFiles1 <<< ${reads1}
IFS=',' read -r -a readsFiles2 <<< ${reads2}

# ----- process -----
function mapping {
    if [[ ! -e 1_mapping/${name}.bam ]]; then
        reads_file_process ${readsFiles1[@]} ${readsFiles2[@]} && \
        trim_galore --fastqc --fastqc_args "--outdir 0_raw_data/FastQC_OUT --nogroup -t ${processer} -q" --paired ${trim_galore_input[@]} --trim-n -j 4 -o 0_raw_data/ --no_report_file --suppress_warn && \
        hisat2 --summary-file 1_mapping/Mapping_${name}.log --new-summary -p ${processer} --mm -x ~/source/bySpecies/${genomeVersion}/hisat2/${genomeVersion}_main -1 ${mapping_input_file1} -2 ${mapping_input_file2} | samtools view -@ $((${processer}-1)) -bS > 1_mapping/${name}.bam && \
        rm ${filteredReads1[@]} ${filteredReads2[@]}
    fi
}

function expression_value {
    if [[ ! -e 2_expression_value_ExonUniq/RNA_seq_${name}_${annotation}_coverage.ExonUniq.txt ]] || [[ ! -e 2_expression_value_ExonUniq/RNA_seq_${name}_${annotation}_coverage.ExonUniq.gtf ]] || [[ ! -e 2_expression_value_ExonUniq/${name}_${annotation}.ExonUniq.read_cnt ]];then
        cd 1_mapping
        samtools sort -@ $((${processer}-1)) -o ${name}_sorted.bam ${name}.bam && samtools index -@ $((${processer}-1)) ${name}_sorted.bam
        cd ../2_expression_value_ExonUniq
        [[ ! -e RNA_seq_${name}_${annotation}_coverage.ExonUniq.txt || ! -e RNA_seq_${name}_${annotation}_coverage.ExonUniq.gtf ]] && stringtie ../1_mapping/${name}_sorted.bam -p $((${processer}/2)) -G ~/source/bySpecies/${genomeVersion}/${annotation}/${genomeVersion}.${annotation}.ExonUniq.gtf -l ${name} -A RNA_seq_${name}_${annotation}_coverage.ExonUniq.txt -o RNA_seq_${name}_${annotation}_coverage.ExonUniq.gtf -e -B &
        [ ! -e ${name}_${annotation}.ExonUniq.read_cnt ] && samtools view ../1_mapping/${name}.bam | gfold count -ann ~/source/bySpecies/${genomeVersion}/${annotation}/${genomeVersion}.${annotation}.ExonUniq.gtf -tag stdin -o ${name}_${annotation}.ExonUniq.read_cnt &
        wait
        rm ../1_mapping/${name}_sorted.bam ../1_mapping/${name}_sorted.bam.bai
        cd ..
    fi
}

function signal {
    if [[ ! -e 3_signal/RNA_seq_${name}.bw ]]; then
        cd 3_signal && \
        cat ../1_mapping/${name}.bam | python3 ~/bin/utilities/bamToBed.py > RNA_seq_${name}.bed && \
        bedToBigWig RNA_seq_${name} RNA_seq_${name} RNA_seq_${name} && \
        cd ..
    fi
}

function basic_QC {
    cd 4_basic_QC
    [ ! -e RNA_seq_${name}_${annotation}_read_distribution.txt ] && read_distribution.py -i ../1_mapping/${name}.bam -r ~/source/bySpecies/${genomeVersion}/${annotation}/${genomeVersion}.${annotation}.bed > RNA_seq_${name}_${annotation}_read_distribution.txt &
    geneBody_coverage2.py -i ../3_signal/RNA_seq_${name}.bw -r ~/source/bySpecies/${genomeVersion}/${annotation}/${genomeVersion}.${annotation}.bed -o RNA_seq_${name}_${annotation} &
    wait
    cd ..
}


function cleaning_up {
    rm 1_mapping/${name}.bam
    compress_bed 3_signal/RNA_seq_${name}.bed ${genomeVersion}
    # if [[ $# -eq 8 ]]; then
    #     rm 1_mapping/${name1}.bam 1_mapping/${name2}.bam
    #     compress_bed 3_signal/RNA_seq_${name1}.bed ${genomeVersion}
    #     compress_bed 3_signal/RNA_seq_${name2}.bed ${genomeVersion}
    # fi
}



for stepNum in ${stepNums[@]};do
    case $stepNum in
        "1")
            mapping
            echo "mapping for $name is done !"
            echo ""
            ;;
        "2")
            expression_value
            echo "expression_value for $name is done !"
            echo ""
            ;;
        "3")
            signal
            echo "signal for $name is done !"
            echo ""
            ;;
        "4")
            basic_QC
            echo "basic_QC for $name is done !"
            echo ""
            ;;
        "5")
            cleaning_up
            echo "cleaning_up for $name is done !"
            echo ""
            ;;
    esac

done