#!/bin/bash

cd ~/maternal_loading/2.public_data

# 25
RNAseq_PE_exon_step.sh ventricle_rep2 1,2 25 danRer11_2 SRR9336406_1.fastq.gz SRR9336406_2.fastq.gz ensGene > bin/log/ventricle_rep2.log 2>&1
RNAseq_PE_exon_step.sh ventricle_rep3 1,2 25 danRer11_2 SRR9336407_1.fastq.gz SRR9336407_2.fastq.gz ensGene > bin/log/ventricle_rep3.log 2>&1
RNAseq_PE_exon_step.sh ventricle_rep4 1,2 25 danRer11_2 SRR9336408_1.fastq.gz SRR9336408_2.fastq.gz ensGene > bin/log/ventricle_rep4.log 2>&1
RNAseq_PE_exon_step.sh ventricle_rep5 1,2 25 danRer11_2 SRR9336409_1.fastq.gz SRR9336409_2.fastq.gz ensGene > bin/log/ventricle_rep5.log 2>&1

# 30
RNAseq_SE_exon_step.sh testis_rep1 1,2 25 danRer11_2 SRR7468674.fastq.gz,SRR7468675.fastq.gz ensGene > bin/log/testis_rep1.log 2>&1
RNAseq_SE_exon_step.sh testis_rep2 1,2 25 danRer11_2 SRR7468676.fastq.gz,SRR7468677.fastq.gz ensGene > bin/log/testis_rep2.log 2>&1
RNAseq_SE_exon_step.sh testis_rep3 1,2 25 danRer11_2 SRR7468678.fastq.gz,SRR7468679.fastq.gz ensGene > bin/log/testis_rep3.log 2>&1
RNAseq_SE_exon_step.sh testis_rep4 1,2 25 danRer11_2 SRR7468680.fastq.gz,SRR7468681.fastq.gz ensGene > bin/log/testis_rep4.log 2>&1
RNAseq_SE_exon_step.sh testis_rep5 1,2 25 danRer11_2 SRR7468682.fastq.gz,SRR7468683.fastq.gz ensGene > bin/log/testis_rep5.log 2>&1


# 24
# RNAseq_PE_exon_step_bigBam.sh 4dpf_vascular_muscle_acta2_p_rep1 2 1 danRer11_2 SRR7813744_1.fastq.gz SRR7813744_2.fastq.gz ensGene > bin/log/4dpf_vascular_muscle_acta2_p_rep1.log 2>&1
# 25
# RNAseq_PE_exon_step_bigBam.sh                    ventricle_rep1 2 1 danRer11_2 SRR9336405_1.fastq.gz SRR9336405_2.fastq.gz ensGene > bin/log/ventricle_rep1.log 2>&1
# 33
# RNAseq_PE_exon_step_bigBam.sh        epidermis_Neutrophils_rep3 2 1 danRer11_2 SRR8591749_1.fastq.gz SRR8591749_2.fastq.gz ensGene > bin/log/epidermis_Neutrophils_rep3.log 2>&1
