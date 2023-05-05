#!/bin/bash
# This code is not used for exon read count to FPKM calculation.

cd ~/maternal_loading/2.public_data/1_mapping

for fi in $(ls *[0-9].bam);do
    echo $fi
    name=${fi%%.bam}
    samtools sort $fi -o ${name}.sorted.bam
    samtools index ${name}.sorted.bam
    bamPEFragmentSize -hist fragment_len/${name}.fragmentSize.png -T "Fragment size of PE/SE RNA-seq data" --maxFragmentLength 1000 -b ${name}.sorted.bam --samplesLabel ${name} > fragment_len/${name}.fragmentSize.txt
done

## for some samples missed (.fragmentSize.txt):
for fi in kidney_HSC_gata2a_n_runx1_p.bam kidney_HSC_gata2a_p_runx1_n.bam kidney_HSC_gata2a_p_runx1_p.bam oocyte_stage1.bam oocyte_stage2.bam oocyte_stage3.bam oocyte_stage4.bam retina_muller_rep1.bam retina_muller_rep2.bam retina_muller_rep3.bam shield_1.bam shield_2.bam shield_3.bam shield_rep4.bam shield_rep5.bam sphere_rep1.bam sphere_rep2.bam valve_rep1.bam valve_rep2.bam valve_rep3.bam;do
    echo $fi
    name=${fi%%.bam}
    samtools sort $fi -o ${name}.sorted.bam
    samtools index ${name}.sorted.bam
    bamPEFragmentSize -hist fragment_len/${name}.fragmentSize.png -T "Fragment size of PE/SE RNA-seq data" --maxFragmentLength 1000 -b ${name}.sorted.bam --samplesLabel ${name} > fragment_len/${name}.fragmentSize.txt
done

## for some samples missed (.bam):
for fi in ventricle_rep2.bam ventricle_rep3.bam ventricle_rep4.bam ventricle_rep5.bam;do
    echo $fi
    name=${fi%%.bam}
    samtools sort $fi -o ${name}.sorted.bam
    samtools index ${name}.sorted.bam
    bamPEFragmentSize -hist fragment_len/${name}.fragmentSize.png -T "Fragment size of PE/SE RNA-seq data" --maxFragmentLength 1000 -b ${name}.sorted.bam --samplesLabel ${name} > fragment_len/${name}.fragmentSize.txt
done

## for some samples missed (.fastq):
for fi in ovary_rep2.bam testis_rep1.bam testis_rep2.bam testis_rep3.bam testis_rep4.bam testis_rep5.bam;do
    echo $fi
    name=${fi%%.bam}
    samtools sort $fi -o ${name}.sorted.bam
    samtools index ${name}.sorted.bam
    bamPEFragmentSize -hist fragment_len/${name}.fragmentSize.png -T "Fragment size of PE/SE RNA-seq data" --maxFragmentLength 1000 -b ${name}.sorted.bam --samplesLabel ${name} > fragment_len/${name}.fragmentSize.txt
done