#!/bin/bash
cd ~/maternal_loading/1.private_data/genes4_ko_analysis/RNAseq

# RNAseq_PE_step.sh       npm2a_1k_20200515 1,2,3,4 30 danRer11_2        TU-TL-RNA-N2-1K_combined_R1.fastq.gz TU-TL-RNA-N2-1K_combined_R2.fastq.gz       ensGene > bin/log/npm2a_1k_20200515.log 2>&1
# RNAseq_PE_step.sh      npm2a_256_20200515 1,2,3,4 5 danRer11_2       TU-TL-RNA-N2-256_combined_R1.fastq.gz TU-TL-RNA-N2-256_combined_R2.fastq.gz      ensGene > bin/log/npm2a_256_20200515.log 2>&1 &
# RNAseq_PE_step.sh       npm2a_64_20200515 1,2,3,4 5 danRer11_2        TU-TL-RNA-N2-64_combined_R1.fastq.gz TU-TL-RNA-N2-64_combined_R2.fastq.gz       ensGene > bin/log/npm2a_64_20200515.log 2>&1 &
# RNAseq_PE_step.sh   npm2a_oblong_20200515 1,2,3,4 5 danRer11_2    TU-TL-RNA-N2-oblong_combined_R1.fastq.gz TU-TL-RNA-N2-oblong_combined_R2.fastq.gz   ensGene > bin/log/npm2a_oblong_20200515.log 2>&1 &
# RNAseq_PE_step.sh          wt_1k_20200515 1,2,3,4 5 danRer11_2        TU-TL-RNA-wt-1K_combined_R1.fastq.gz TU-TL-RNA-wt-1K_combined_R2.fastq.gz       ensGene > bin/log/wt_1k_20200515.log 2>&1 &
# RNAseq_PE_step.sh         wt_256_20200515 1,2,3,4 5 danRer11_2       TU-TL-RNA-wt-256_combined_R1.fastq.gz TU-TL-RNA-wt-256_combined_R2.fastq.gz      ensGene > bin/log/wt_256_20200515.log 2>&1 &
# wait
# RNAseq_PE_step.sh         wt_512_20200515 1,2,3,4 5 danRer11_2       TU-TL-RNA-wt-512_combined_R1.fastq.gz TU-TL-RNA-wt-512_combined_R2.fastq.gz      ensGene > bin/log/wt_512_20200515.log 2>&1 &
# RNAseq_PE_step.sh      wt_oblong_20200515 1,2,3,4 5 danRer11_2    TU-TL-RNA-wt-oblong_combined_R1.fastq.gz TU-TL-RNA-wt-oblong_combined_R2.fastq.gz   ensGene > bin/log/wt_oblong_20200515.log 2>&1 &
# RNAseq_PE_step.sh       npm2a_1k_20200531 1,2,3,4 5 danRer11_2      TU-TL-npm2a-1kRNA_combined_R1.fastq.gz TU-TL-npm2a-1kRNA_combined_R2.fastq.gz     ensGene > bin/log/npm2a_1k_20200531.log 2>&1 &
# RNAseq_PE_step.sh      npm2a_256_20200531 1,2,3,4 5 danRer11_2     TU-TL-npm2a-256RNA_combined_R1.fastq.gz TU-TL-npm2a-256RNA_combined_R2.fastq.gz    ensGene > bin/log/npm2a_256_20200531.log 2>&1 &
# RNAseq_PE_step.sh       npm2a_64_20200531 1,2,3,4 5 danRer11_2      TU-TL-npm2a-64RNA_combined_R1.fastq.gz TU-TL-npm2a-64RNA_combined_R2.fastq.gz     ensGene > bin/log/npm2a_64_20200531.log 2>&1 &
# RNAseq_PE_step.sh   npm2a_oblong_20200531 1,2,3,4 5 danRer11_2  TU-TL-npm2a-oblongRNA_combined_R1.fastq.gz TU-TL-npm2a-oblongRNA_combined_R2.fastq.gz ensGene > bin/log/npm2a_oblong_20200531.log 2>&1 &
# wait

# RNAseq_PE_step.sh   mcm6l_oocyte_20200703 1,2,3,4 5 danRer11_2            6l-oocyte-1_combined_R1.fastq.gz 6l-oocyte-1_combined_R2.fastq.gz           ensGene > bin/log/mcm6l_oocyte_20200703.log 2>&1 &
# RNAseq_PE_step.sh mcm6l_oocyte_20200703-2 1,2,3,4 5 danRer11_2            6l-oocyte-2_combined_R1.fastq.gz 6l-oocyte-2_combined_R2.fastq.gz           ensGene > bin/log/mcm6l_oocyte_20200703-2.log 2>&1 &
# RNAseq_PE_step.sh      wt_oocyte_20200703 1,2,3,4 5 danRer11_2            WT-oocyte-1_combined_R1.fastq.gz WT-oocyte-1_combined_R2.fastq.gz           ensGene > bin/log/wt_oocyte_20200703.log 2>&1 &
# RNAseq_PE_step.sh    wt_oocyte_20200703-2 1,2,3,4 5 danRer11_2            WT-oocyte-2_combined_R1.fastq.gz WT-oocyte-2_combined_R2.fastq.gz           ensGene > bin/log/wt_oocyte_20200703-2.log 2>&1 &
# wait
# RNAseq_PE_step.sh   npm2a_oocyte_20200904 1,2,3,4 5 danRer11_2         Npm2a-oocyte-1_combined_R1.fastq.gz Npm2a-oocyte-1_combined_R2.fastq.gz        ensGene > bin/log/npm2a_oocyte_20200904.log 2>&1 &
# RNAseq_PE_step.sh npm2a_oocyte_20200904-2 1,2,3,4 5 danRer11_2         Npm2a-oocyte-2_combined_R1.fastq.gz Npm2a-oocyte-2_combined_R2.fastq.gz        ensGene > bin/log/npm2a_oocyte_20200904-2.log 2>&1 &
# RNAseq_PE_step.sh    orc1_oocyte_20200908 1,2,3,4 5 danRer11_2          Orc1-oocyte-1_combined_R1.fastq.gz Orc1-oocyte-1_combined_R2.fastq.gz         ensGene > bin/log/orc1_oocyte_20200908.log 2>&1 &
# RNAseq_PE_step.sh  orc1_oocyte_20200908-2 1,2,3,4 5 danRer11_2          Orc1-oocyte-2_combined_R1.fastq.gz Orc1-oocyte-2_combined_R2.fastq.gz         ensGene > bin/log/orc1_oocyte_20200908-2.log 2>&1 &
# wait

# RNAseq_PE_step.sh   mcm6l_oblong_20190503 1,2,3,4 5 danRer11_2   oblong-mcm6l-RNA_FRRA190036003-1a_1.fq.gz oblong-mcm6l-RNA_FRRA190036003-1a_2.fq.gz ensGene > bin/log/mcm6l_oblong_20190503.log 2>&1
# RNAseq_PE_step.sh      wt_oblong_20190503 1,2,3,4 5 danRer11_2      oblong-wt-RNA_FRRA190035998-1a_1.fq.gz oblong-wt-RNA_FRRA190035998-1a_2.fq.gz ensGene > bin/log/wt_oblong_20190503.log 2>&1
# RNAseq_PE_step.sh       mcm6l_1k_20190607 1,2,3,4 5 danRer11_2     1K-mcm6l-2-RNA_FRRA190043067-1a_1.fq.gz 1K-mcm6l-2-RNA_FRRA190043067-1a_2.fq.gz ensGene > bin/log/mcm6l_1k_20190607.log 2>&1
# RNAseq_PE_step.sh          wt_1k_20190607 1,2,3,4 5 danRer11_2        1K-wt-2-RNA_FRRA190043063-1a_1.fq.gz 1K-wt-2-RNA_FRRA190043063-1a_2.fq.gz ensGene > bin/log/wt_1k_20190607.log 2>&1
# wait
# RNAseq_PE_step.sh      mcm6l_256_20190607 1,2,3,4 5 danRer11_2    256-mcm6l-2-RNA_FRRA190043066-1a_1.fq.gz 256-mcm6l-2-RNA_FRRA190043066-1a_2.fq.gz ensGene > bin/log/mcm6l_256_20190607.log 2>&1
# RNAseq_PE_step.sh         wt_256_20190607 1,2,3,4 5 danRer11_2       256-wt-2-RNA_FRRA190043062-1a_1.fq.gz 256-wt-2-RNA_FRRA190043062-1a_2.fq.gz ensGene > bin/log/wt_256_20190607.log 2>&1
# RNAseq_PE_step.sh       mcm6l_64_20190607 1,2,3,4 5 danRer11_2     64-mcm6l-2-RNA_FRRA190043065-1a_1.fq.gz 64-mcm6l-2-RNA_FRRA190043065-1a_2.fq.gz ensGene > bin/log/mcm6l_64_20190607.log 2>&1
# RNAseq_PE_step.sh          wt_64_20190607 1,2,3,4 5 danRer11_2        64-wt-2-RNA_FRRA190043061-1a_1.fq.gz 64-wt-2-RNA_FRRA190043061-1a_2.fq.gz ensGene > bin/log/wt_64_20190607.log 2>&1
wait
