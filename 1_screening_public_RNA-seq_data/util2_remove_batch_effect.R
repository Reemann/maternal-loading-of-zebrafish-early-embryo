library(sva)
# setwd('/Users/wym1193/Desktop/maternal_loading/public_data/analysis_embryoTrans_tissueTrans/expression_levels')
setwd('/mnt/Storage/home/wangyiman/maternal_loading/2.public_data/analysis_embryoExon_tissueExon')

ovary_earlyEmbryo_sample <- read.delim("ovary_earlyEmbryo_exon_count_matrix_reorder.csv", row.names=1, quote="", stringsAsFactors=FALSE, sep = ',')
lateEmbryo_tissue_sample <- read.delim("lateEmbryo_tissue_exon_count_matrix_reorder.csv", row.names=1, quote="", stringsAsFactors=FALSE, sep = ',')

# ovary_earlyEmbryo_sample <- read.delim("ovary_earlyEmbryo_sample_gene_TPM.tsv", row.names=1, quote="", stringsAsFactors=FALSE, sep = '\t')
# lateEmbryo_tissue_sample <- read.delim("lateEmbryo_tissue_sample_gene_TPM.tsv", row.names=1, quote="", stringsAsFactors=FALSE, sep = '\t')

ovary_earlyEmbryo_sample.mat <- data.matrix(ovary_earlyEmbryo_sample[c(3,4,seq(9,116))])
lateEmbryo_tissue_sample.mat <- data.matrix(lateEmbryo_tissue_sample)


ovary_earlyEmbryo.batch <- c(rep(1,2), rep(2,12), rep(3,5), rep(4,2), rep(5,2), rep(6,2), rep(7,5), rep(8,3), rep(9,9), rep(10,5), rep(11,1), rep(12,4), rep(13,2), rep(14,9), rep(15,5), rep(16,5), rep(17,5), rep(18,8), rep(19,5), rep(20,2), rep(21,5), rep(22,5), rep(23,5), rep(24,2))


# lateEmbryo_tissue.batch <- c(rep(1,19), rep(2,5), rep(3,5), rep(4, 24), rep(5,7), rep(6,8), rep(7,2), rep(8,23), rep(9,28), rep(10,18), rep(11,7), rep(12,3), rep(13,2), rep(14,5), rep(15,4), rep(16,3), rep(17,4), rep(18,3), rep(19,3), rep(20,7), rep(21,9), rep(22,3), rep(23,3), rep(24,3), rep(25,5), rep(26,5))

lateEmbryo_tissue.batch <- c(rep(1, 4), rep(2, 6), rep(3, 4), rep(4, 5), rep(5, 5), rep(6, 5), rep(7, 2), rep(8, 2), rep(9, 3), rep(10, 2), rep(11, 3), rep(12, 3), rep(13, 5), rep(14, 2), rep(15, 2), rep(16, 2), rep(17, 5), rep(18, 2), rep(19, 2), rep(20, 2), rep(21, 2), rep(22, 2), rep(23, 2), rep(24, 2), rep(25, 2), rep(26, 3), rep(27, 2), rep(28, 2), rep(29, 3), rep(30, 2), rep(31, 5), rep(32, 2), rep(33, 2), rep(34, 2), rep(35, 3), rep(36, 3), rep(37, 3), rep(38, 3), rep(39, 2), rep(40, 3), rep(41, 5), rep(42, 2), rep(43, 2), rep(44, 3), rep(45, 3), rep(46, 3), rep(47, 5), rep(48, 3), rep(49, 3), rep(51, 3), rep(52, 2), rep(54, 2), rep(55, 2), rep(56, 4), rep(57, 3), rep(58, 4), rep(59, 3), rep(60, 3), rep(62, 2), rep(63, 4), rep(64, 3), rep(65, 3), rep(66, 3), rep(67, 3), rep(68, 3), rep(69, 3), rep(70, 5), rep(71, 5))



ovary_earlyEmbryo.adjusted <- sva::ComBat_seq(ovary_earlyEmbryo_sample.mat[,-48], batch=ovary_earlyEmbryo.batch[-48], group=ovary_earlyEmbryo.batch[-48])
lateEmbryo_tissue.adjusted <- sva::ComBat_seq(lateEmbryo_tissue_sample.mat[, c(-146,-152,-174)], 
                                              batch=lateEmbryo_tissue.batch, group=NULL)

ovary_earlyEmbryo.cols <- c('transcript_id')
for (name in colnames(ovary_earlyEmbryo_sample.mat)){
  if(substring(name,1,1) == 'X'){
    ovary_earlyEmbryo.cols <- c(ovary_earlyEmbryo.cols, substring(name,2))
  }else{
    ovary_earlyEmbryo.cols <- c(ovary_earlyEmbryo.cols, name)
  }
}

lateEmbryo_tissue.cols <- c('transcript_id')
for (name in colnames(lateEmbryo_tissue_sample.mat)){
  if(substring(name,1,1) == 'X'){
    lateEmbryo_tissue.cols <- c(lateEmbryo_tissue.cols, substring(name,2))
  }else{
    lateEmbryo_tissue.cols <- c(lateEmbryo_tissue.cols, name)
  }
}

# write.table(data.frame(cbind(row.names(ovary_earlyEmbryo.adjusted), ovary_earlyEmbryo.adjusted[,1:47], ovary_earlyEmbryo_sample.mat[,48], ovary_earlyEmbryo.adjusted[,48:109])), 'ovary_earlyEmbryo_transcript_count_matrix_exOvary_ComBatSeq.csv', quote = FALSE, sep = ',', row.names = FALSE, col.names = ovary_earlyEmbryo.cols)

# write.table(data.frame(cbind(row.names(lateEmbryo_tissue.adjusted), lateEmbryo_tissue.adjusted)), 'lateEmbryo_tissue_transcript_count_matrix_ComBatSeq.csv', quote = FALSE, sep = ',', row.names = FALSE, col.names = lateEmbryo_tissue.cols)

write.table(data.frame(cbind(row.names(ovary_earlyEmbryo.adjusted), ovary_earlyEmbryo.adjusted[,1:47], ovary_earlyEmbryo_sample.mat[,48], ovary_earlyEmbryo.adjusted[,48:109])), 'ovary_earlyEmbryo_exon_count_matrix_exOvary_ComBatSeq.csv', quote = FALSE, sep = ',', row.names = FALSE, col.names = ovary_earlyEmbryo.cols)

write.table(data.frame(cbind(row.names(lateEmbryo_tissue.adjusted), lateEmbryo_tissue.adjusted[,1:145], lateEmbryo_tissue_sample.mat[,146], lateEmbryo_tissue.adjusted[,146:150], lateEmbryo_tissue_sample.mat[,152], lateEmbryo_tissue.adjusted[,151:171], lateEmbryo_tissue_sample.mat[,174], lateEmbryo_tissue.adjusted[,172:205])), 'lateEmbryo_tissue_exon_count_matrix_ComBatSeq_bySample.csv', quote = FALSE, sep = ',', row.names = FALSE, col.names = lateEmbryo_tissue.cols)
