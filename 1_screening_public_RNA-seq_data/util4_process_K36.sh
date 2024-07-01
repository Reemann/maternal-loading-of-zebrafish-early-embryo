#!/bin/bash


# ----- H3K36me3 profile over maternal exon -----

# 1. profile
cd ~/maternal_loading/2.public_data/analysis
exon_bed=maternal_exon_new.bed
k36_bw=/mnt/Storage/home/wangyiman/maternal_loading/2.public_data/ChIPseq/2_signal/ChIPseq_H3K36me3_dome.bw
bw_summary_bed_bins.py -b $exon_bed -w $k36_bw -n 10 --bylen -5 0 -3 0 --5bins 0 --3bins 0 -o maternal_exon_H3K36me3_dome_profile.tsv
ref_bed=/mnt/Storage/home/wangyiman/source/bySpecies/danRer11_2/ensGene/danRer11_2.ensGene.bed
bwSum_exon2transcript_binNumSwitch.py maternal_exon_H3K36me3_dome_profile.tsv maternal_transcript_H3K36me3_dome_profile.tsv 50 $ref_bed
bdgfi=~/maternal_loading/2.public_data/histone_modification/2_signal/ChIPseq_H3K36me3_dome_reads_shift.bdg
exon_2of3_bed=maternal_tail2of3_exon_new.bed
bedtools intersect -a <(sort -k1,1 -k2,2n $exon_2of3_bed) -b $bdgfi -wa -wb | awk 'BEGIN{FS=OFS="\t"}{split($4,a,".");if($2<$8){b=$8}else{b=$2};if($3<$9){c=$3}else{c=$9};print $1"_"a[1], 1, 100, $4, $10, $6, c-b}' | bedtools merge -i <(sort -k1,1 -) -s -c 4,5,6,7 -o distinct,sum,distinct,sum | awk 'BEGIN{FS=OFS="\t";print "Transcript_id", "FPKM", "Exon_ids", "SignalSum_2of3Exon", "Strand", "Len_2of3Exon", "Chr"}{split($1,a,"_");print a[2],$5*1000/$7,$4,$5,$6,$7,a[1]}' > maternal_tail2of3_exon_H3K36me3_dome_FPKM.txt

# 2. FPKM
exon_bed=~/maternal_loading/2.public_data/analysis_embryoTrans_tissueTrans/maternal_exon_new.bed
exon_2of3_bed=~/maternal_loading/2.public_data/analysis_embryoTrans_tissueTrans/maternal_tail2of3_exon_new.bed
tail_2of3_concatenatedExon.py $exon_bed $exon_2of3_bed



# ----- H3K36me3 profile over total exon -----

# 1. profile
cd ~/maternal_loading/2.public_data/H3K36me3
### summary signal by exon
exon_bed=~/source/bySpecies/danRer11_2/ensGene/danRer11_2_main_exonEns.bed
k36_bw=/mnt/Storage/home/wangyiman/maternal_loading/2.public_data/ChIPseq/2_signal/ChIPseq_H3K36me3_dome.bw
bw_summary_bed_bins.py -b $exon_bed -w $k36_bw -n 1 --bylen -5 0 -3 0 --5bins 0 --3bins 0 -o total_exon_H3K36me3_dome_profile.tsv2
### concatenate exons to transcripts
ref_bed=/mnt/Storage/home/wangyiman/source/bySpecies/danRer11_2/ensGene/danRer11_2.ensGene.bed
bwSum_exon2transcript_binNumSwitch.py total_exon_H3K36me3_dome_profile.tsv total_transcript_H3K36me3_dome_profile.tsv 50 $ref_bed

bdgfi=~/maternal_loading/2.public_data/ChIPseq/2_signal/ChIPseq_H3K36me3_dome_reads_shift.bdg
bedtools intersect -a <(sort -k1,1 -k2,2n $exon_bed) -b $bdgfi -wa -wb | awk 'BEGIN{FS=OFS="\t"}{if($2<$8){b=$8}else{b=$2};if($3<$9){c=$3}else{c=$9};print $1, b, c, $4, $10, $6}' > total_exon_H3K36me3_dome_signal.bed
exonSignalBed_to_signalTsv.py total_exon_H3K36me3_dome_signal.bed 100 total_exon_H3K36me3_dome_signal.tsv


# 2. FPKM
exon_bed=~/source/bySpecies/danRer11_2/ensGene/danRer11_2_main_exonEns.bed
exon_2of3_bed=~/maternal_loading/2.public_data/H3K36me3/total_tail2of3_exon.bed
tail_2of3_concatenatedExon.py $exon_bed $exon_2of3_bed # pao le 8 hours
# bedtools intersect -a <(sort -k1,1 -k2,2n $exon_2of3_bed) -b $bdgfi -wa -wb | awk 'BEGIN{FS=OFS="\t"}{split($4,a,".");if($2<$8){b=$8}else{b=$2};if($3<$9){c=$3}else{c=$9};print $1"_"a[1], 1, 100, $4, $10, $6, c-b}' | bedtools merge -i <(sort -k1,1 -) -s -c 4,5,6,7 -o distinct,sum,distinct,sum | awk 'BEGIN{FS=OFS="\t";print "Transcript_id", "RPKM", "Exon_ids", "SignalSum_2of3Exon", "Strand", "Len_2of3Exon", "Chr"}{split($1,a,"_");print a[2],$5*1000/$7,$4,$5,$6,$7,a[1]}' > total_tail2of3_exon_H3K36me3_dome_RPKM.txt
bdgfi=~/maternal_loading/2.public_data/ChIPseq/2_signal/ChIPseq_H3K36me3_dome_reads_shift.bdg
bedtools intersect -a <(sort -k1,1 -k2,2n $exon_2of3_bed) -b $bdgfi -wa -wb | awk 'BEGIN{FS=OFS="\t"}{split($4,a,".");if($2<$8){b=$8}else{b=$2};if($3<$9){c=$3}else{c=$9};print $1"_"a[1]"."a[2], 1, 100, $4, $10 * (c-b), $6, c-b}' | bedtools merge -i <(sort -k1,1 -) -s -c 4,5,6,7 -o distinct,sum,distinct,sum | awk 'BEGIN{FS=OFS="\t";print "Transcript_id", "RPKM", "Exon_ids", "Strand", "Len_2of3Exon", "Chr"}{split($1,a,"_");print a[2],$5*1000/$7/$7,$4,$6,$7,a[1]}' > total_tail2of3_exon_H3K36me3_dome_RPKM.txt
