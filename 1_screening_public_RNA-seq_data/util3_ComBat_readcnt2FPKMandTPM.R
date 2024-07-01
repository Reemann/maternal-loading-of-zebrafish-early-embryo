# install the package
if(!require(devtools)) install.packages("devtools")
devtools::install_github("AAlhendi1707/countToFPKM", build_vignettes = TRUE)
library(countToFPKM)

# prepare read count matrix
setwd('~/maternal_loading/2.public_data/analysis_embryoExon_tissueExon')

# Import the read count matrix data into R.
# ovary_earlyEmbryo.counts <- as.matrix(read.delim("ovary_earlyEmbryo_exon_count_matrix_exOvary_ComBatSeq.csv", row.names=1, quote="", stringsAsFactors=FALSE, sep = ','))
# 
# lateEmbryo_tissue.counts <- as.matrix(read.delim("lateEmbryo_tissue_exon_count_matrix_ComBatSeq_bySample.csv", row.names=1, quote="", stringsAsFactors=FALSE, sep = ','))

ovary_earlyEmbryo.counts <- as.matrix(read.delim("ovary_earlyEmbryo_exon_count_matrix_exOvary_ComBatSeq_byBatch.csv", row.names=1, quote="", stringsAsFactors=FALSE, sep = ','))

lateEmbryo_tissue.counts <- as.matrix(read.delim("lateEmbryo_tissue_exon_count_matrix_ComBatSeq_bySample_byBatch.csv", row.names=1, quote="", stringsAsFactors=FALSE, sep = ','))

ovary_earlyEmbryo.counts <- ovary_earlyEmbryo.counts[order(row.names(ovary_earlyEmbryo.counts)),]
lateEmbryo_tissue.counts <- lateEmbryo_tissue.counts[order(row.names(lateEmbryo_tissue.counts)),]


# Import feature annotations. 
# Assign feature lenght into a numeric vector.
gene.annotations <- read.table("~/source/bySpecies/danRer11_2/ensGene/danRer11_2.ensGene.exon_len.bed", sep="\t", header=FALSE)
gene.annotations <- gene.annotations[order(gene.annotations$V4),]
featureLength <- gene.annotations[[7]]


fpkm_tpm_exon <- function(counts, featureLength){
  # Ensure valid arguments.
  stopifnot(length(featureLength) == nrow(counts))
  
  # Process one column at a time for fpkm calculation
  fpkm <- do.call(cbind, lapply(1:ncol(counts), function(i) {
    N <- sum(counts[,i])
    exp( log(counts[,i]) + log(1e9) - log(featureLength[i]) - log(N) )
  }))
  
  tpm <- do.call(cbind, lapply(1:ncol(counts), function(i) {
    rate = log(counts[,i]) - log(featureLength[i])
    denom = log(sum(exp(rate)))
    exp(rate - denom + log(1e6))
  }))
  
  # Copy the row and column names from the original matrix.
  colnames(fpkm) <- colnames(counts)
  rownames(fpkm) <- rownames(counts)
  colnames(tpm) <- colnames(counts)
  rownames(tpm) <- rownames(counts)
  return(list(FPKM = fpkm, TPM = tpm))
}

  
ovary_fpkm_tpm <- fpkm_tpm_exon(ovary_earlyEmbryo.counts, featureLength)
late_fpkm_tpm <- fpkm_tpm_exon(lateEmbryo_tissue.counts, featureLength)

# write.csv(ovary_fpkm_tpm$FPKM, 
#           '~/maternal_loading/2.public_data/analysis_embryoExon_tissueExon/ovary_earlyEmbryo_exon_FPKM_matrix_exOvary_ComBatSeq.csv',
#           sep = '\t', quote = FALSE)
# write.csv(ovary_fpkm_tpm$TPM, 
#           '~/maternal_loading/2.public_data/analysis_embryoExon_tissueExon/ovary_earlyEmbryo_exon_TPM_matrix_exOvary_ComBatSeq.csv',
#           sep = '\t', quote = FALSE)
# write.csv(late_fpkm_tpm$FPKM, 
#           '~/maternal_loading/2.public_data/analysis_embryoExon_tissueExon/lateEmbryo_tissue_exon_FPKM_matrix_exOvary_ComBatSeq.csv',
#           sep = '\t', quote = FALSE)
# write.csv(late_fpkm_tpm$TPM, 
#           '~/maternal_loading/2.public_data/analysis_embryoExon_tissueExon/lateEmbryo_tissue_exon_TPM_matrix_exOvary_ComBatSeq.csv',
#           sep = '\t', quote = FALSE)

write.csv(ovary_fpkm_tpm$FPKM, 
          '~/maternal_loading/2.public_data/analysis_embryoExon_tissueExon/ovary_earlyEmbryo_exon_FPKM_matrix_exOvary_ComBatSeq_byBatch.csv',
          sep = '\t', quote = FALSE)
write.csv(ovary_fpkm_tpm$TPM, 
          '~/maternal_loading/2.public_data/analysis_embryoExon_tissueExon/ovary_earlyEmbryo_exon_TPM_matrix_exOvary_ComBatSeq_byBatch.csv',
          sep = '\t', quote = FALSE)
write.csv(late_fpkm_tpm$FPKM, 
          '~/maternal_loading/2.public_data/analysis_embryoExon_tissueExon/lateEmbryo_tissue_exon_FPKM_matrix_exOvary_ComBatSeq_byBatch.csv',
          sep = '\t', quote = FALSE)
write.csv(late_fpkm_tpm$TPM, 
          '~/maternal_loading/2.public_data/analysis_embryoExon_tissueExon/lateEmbryo_tissue_exon_TPM_matrix_exOvary_ComBatSeq_byBatch.csv',
          sep = '\t', quote = FALSE)

# Plot log10(FPKM+1) heatmap of top 30 highly variable features
fpkmheatmap(ovary_fpkm_tpm$FPKM, topvar=30, showfeaturenames=TRUE, return_log = TRUE)




