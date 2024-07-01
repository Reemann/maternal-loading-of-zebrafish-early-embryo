#!/bin/bash

# 01 embryo & tissue

RNAseq_PE_exon_step.sh 256cell_1 1,2 25 danRer11_2 SRR1049814_1.fastq.gz SRR1049814_2.fastq.gz ensGene > bin/log/256cell_1.log 2>&1
RNAseq_PE_exon_step.sh  24cell_1 1,2 25 danRer11_2  SRR372787_1.fastq.gz  SRR372787_2.fastq.gz ensGene > bin/log/24cell_1.log 2>&1
RNAseq_PE_exon_step.sh  24cell_2 1,2 25 danRer11_2  SRR372788_1.fastq.gz  SRR372788_2.fastq.gz ensGene > bin/log/24cell_2.log 2>&1
RNAseq_PE_exon_step.sh  1kcell_1 1,2 25 danRer11_2  SRR372789_1.fastq.gz  SRR372789_2.fastq.gz ensGene > bin/log/1kcell_1.log 2>&1
RNAseq_PE_exon_step.sh  1kcell_2 1,2 25 danRer11_2  SRR372790_1.fastq.gz  SRR372790_2.fastq.gz ensGene > bin/log/1kcell_2.log 2>&1
RNAseq_PE_exon_step.sh    dome_1 1,2 25 danRer11_2  SRR372791_1.fastq.gz  SRR372791_2.fastq.gz ensGene > bin/log/dome_1.log 2>&1
RNAseq_PE_exon_step.sh    dome_2 1,2 25 danRer11_2  SRR372792_1.fastq.gz  SRR372792_2.fastq.gz ensGene > bin/log/dome_2.log 2>&1
RNAseq_PE_exon_step.sh  shield_1 1,2 25 danRer11_2  SRR372793_1.fastq.gz  SRR372793_2.fastq.gz ensGene > bin/log/shield_1.log 2>&1
RNAseq_PE_exon_step.sh  shield_2 1,2 25 danRer11_2  SRR372794_1.fastq.gz  SRR372794_2.fastq.gz ensGene > bin/log/shield_2.log 2>&1
RNAseq_PE_exon_step.sh  shield_3 1,2 25 danRer11_2  SRR372795_1.fastq.gz  SRR372795_2.fastq.gz ensGene > bin/log/shield_3.log 2>&1
RNAseq_PE_exon_step.sh     bud_1 1,2 25 danRer11_2  SRR372796_1.fastq.gz  SRR372796_2.fastq.gz ensGene > bin/log/bud_1.log 2>&1
RNAseq_PE_exon_step.sh     bud_2 1,2 25 danRer11_2  SRR372797_1.fastq.gz  SRR372797_2.fastq.gz ensGene > bin/log/bud_2.log 2>&1
RNAseq_PE_exon_step.sh   28hpf_1 1,2 25 danRer11_2  SRR372798_1.fastq.gz  SRR372798_2.fastq.gz ensGene > bin/log/28hpf_1.log 2>&1
RNAseq_PE_exon_step.sh   28hpf_2 1,2 25 danRer11_2  SRR372799_1.fastq.gz  SRR372799_2.fastq.gz ensGene > bin/log/28hpf_2.log 2>&1
RNAseq_PE_exon_step.sh    2dpf_1 1,2 25 danRer11_2  SRR372800_1.fastq.gz  SRR372800_2.fastq.gz ensGene > bin/log/2dpf_1.log 2>&1
RNAseq_PE_exon_step.sh    2dpf_2 1,2 25 danRer11_2  SRR372801_1.fastq.gz  SRR372801_2.fastq.gz ensGene > bin/log/2dpf_2.log 2>&1
RNAseq_PE_exon_step.sh    5dpf_1 1,2 25 danRer11_2  SRR372802_1.fastq.gz  SRR372802_2.fastq.gz ensGene > bin/log/5dpf_1.log 2>&1
RNAseq_PE_exon_step.sh    5dpf_2 1,2 25 danRer11_2  SRR372803_1.fastq.gz  SRR372803_2.fastq.gz ensGene > bin/log/5dpf_2.log 2>&1


# 02
RNAseq_PE_exon_step.sh oocyte_rep2  1,2 20 danRer11_2 SRR7235498_1.fastq.gz SRR7235498_2.fastq.gz ensGene > bin/log/oocyte_rep2.log 2>&1
RNAseq_PE_exon_step.sh oocyte_rep1  1,2 20 danRer11_2 SRR7235499_1.fastq.gz SRR7235499_2.fastq.gz ensGene > bin/log/oocyte_rep1.log 2>&1
RNAseq_PE_exon_step.sh dome_rep2    1,2 20 danRer11_2 SRR7235517_1.fastq.gz SRR7235517_2.fastq.gz ensGene > bin/log/dome_rep2.log 2>&1
RNAseq_PE_exon_step.sh dome_rep1    1,2 20 danRer11_2 SRR7235518_1.fastq.gz SRR7235518_2.fastq.gz ensGene > bin/log/dome_rep1.log 2>&1
RNAseq_PE_exon_step.sh 4cell_rep2   1,2 20 danRer11_2 SRR7235544_1.fastq.gz SRR7235544_2.fastq.gz ensGene > bin/log/4cell_rep2.log 2>&1
RNAseq_PE_exon_step.sh 4cell_rep1   1,2 20 danRer11_2 SRR7235545_1.fastq.gz SRR7235545_2.fastq.gz ensGene > bin/log/4cell_rep1.log 2>&1
RNAseq_PE_exon_step.sh 256cell_rep2 1,2 20 danRer11_2 SRR7235550_1.fastq.gz SRR7235550_2.fastq.gz ensGene > bin/log/256cell_rep2.log 2>&1
RNAseq_PE_exon_step.sh 256cell_rep1 1,2 20 danRer11_2 SRR7235549_1.fastq.gz SRR7235549_2.fastq.gz ensGene > bin/log/256cell_rep1.log 2>&1
RNAseq_SE_exon_step.sh oocyte_stage1 1,2 20 danRer11_2 SRR7762354.fastq.gz ensGene > bin/log/oocyte_stage1.log 2>&1
RNAseq_SE_exon_step.sh oocyte_stage2 1,2 20 danRer11_2 SRR7762355.fastq.gz ensGene > bin/log/oocyte_stage2.log 2>&1
RNAseq_SE_exon_step.sh oocyte_stage3 1,2 20 danRer11_2 SRR7762356.fastq.gz ensGene > bin/log/oocyte_stage3.log 2>&1
RNAseq_SE_exon_step.sh oocyte_stage4 1,2 20 danRer11_2 SRR7762357.fastq.gz ensGene > bin/log/oocyte_stage4.log 2>&1


# 03
RNAseq_PE_exon.sh oblong_rep1 8 danRer11_2 SRR1621206_1.fastq.gz SRR1621206_2.fastq.gz &

# 04 embryo & tissue
RNAseq_PE_exon_step.sh elife_30860_1cell_1 1,2 20 danRer11_2 ERR1442646_1.fastq.gz,ERR1442736_1.fastq.gz,ERR1442826_1.fastq.gz,ERR1442916_1.fastq.gz ERR1442646_2.fastq.gz,ERR1442736_2.fastq.gz,ERR1442826_2.fastq.gz,ERR1442916_2.fastq.gz ensGene > bin/log/elife_30860_1cell_1.log 2>&1
RNAseq_PE_exon_step.sh elife_30860_1cell_2 1,2 20 danRer11_2 ERR1442647_1.fastq.gz,ERR1442737_1.fastq.gz,ERR1442827_1.fastq.gz,ERR1442917_1.fastq.gz ERR1442647_2.fastq.gz,ERR1442737_2.fastq.gz,ERR1442827_2.fastq.gz,ERR1442917_2.fastq.gz ensGene > bin/log/elife_30860_1cell_2.log 2>&1
RNAseq_PE_exon_step.sh elife_30860_1cell_3 1,2 20 danRer11_2 ERR1442648_1.fastq.gz,ERR1442738_1.fastq.gz,ERR1442828_1.fastq.gz,ERR1442918_1.fastq.gz ERR1442648_2.fastq.gz,ERR1442738_2.fastq.gz,ERR1442828_2.fastq.gz,ERR1442918_2.fastq.gz ensGene > bin/log/elife_30860_1cell_3.log 2>&1
RNAseq_PE_exon_step.sh elife_30860_1cell_4 1,2 20 danRer11_2 ERR1442649_1.fastq.gz,ERR1442739_1.fastq.gz,ERR1442829_1.fastq.gz,ERR1442919_1.fastq.gz ERR1442649_2.fastq.gz,ERR1442739_2.fastq.gz,ERR1442829_2.fastq.gz,ERR1442919_2.fastq.gz ensGene > bin/log/elife_30860_1cell_4.log 2>&1
RNAseq_PE_exon_step.sh elife_30860_1cell_5 1,2 20 danRer11_2 ERR1442650_1.fastq.gz,ERR1442740_1.fastq.gz,ERR1442830_1.fastq.gz,ERR1442920_1.fastq.gz ERR1442650_2.fastq.gz,ERR1442740_2.fastq.gz,ERR1442830_2.fastq.gz,ERR1442920_2.fastq.gz ensGene > bin/log/elife_30860_1cell_5.log 2>&1
RNAseq_PE_exon_step.sh elife_30860_2cell_1 1,2 20 danRer11_2 ERR1442626_1.fastq.gz,ERR1442716_1.fastq.gz,ERR1442806_1.fastq.gz,ERR1442896_1.fastq.gz ERR1442626_2.fastq.gz,ERR1442716_2.fastq.gz,ERR1442806_2.fastq.gz,ERR1442896_2.fastq.gz ensGene > bin/log/elife_30860_2cell_1.log 2>&1
RNAseq_PE_exon_step.sh elife_30860_2cell_2 1,2 20 danRer11_2 ERR1442627_1.fastq.gz,ERR1442717_1.fastq.gz,ERR1442807_1.fastq.gz,ERR1442897_1.fastq.gz ERR1442627_2.fastq.gz,ERR1442717_2.fastq.gz,ERR1442807_2.fastq.gz,ERR1442897_2.fastq.gz ensGene > bin/log/elife_30860_2cell_2.log 2>&1
RNAseq_PE_exon_step.sh elife_30860_2cell_3 1,2 20 danRer11_2 ERR1442628_1.fastq.gz,ERR1442718_1.fastq.gz,ERR1442808_1.fastq.gz,ERR1442898_1.fastq.gz ERR1442628_2.fastq.gz,ERR1442718_2.fastq.gz,ERR1442808_2.fastq.gz,ERR1442898_2.fastq.gz ensGene > bin/log/elife_30860_2cell_3.log 2>&1
RNAseq_PE_exon_step.sh elife_30860_2cell_4 1,2 20 danRer11_2 ERR1442629_1.fastq.gz,ERR1442719_1.fastq.gz,ERR1442809_1.fastq.gz,ERR1442899_1.fastq.gz ERR1442629_2.fastq.gz,ERR1442719_2.fastq.gz,ERR1442809_2.fastq.gz,ERR1442899_2.fastq.gz ensGene > bin/log/elife_30860_2cell_4.log 2>&1
RNAseq_PE_exon_step.sh elife_30860_2cell_5 1,2 20 danRer11_2 ERR1442630_1.fastq.gz,ERR1442720_1.fastq.gz,ERR1442810_1.fastq.gz,ERR1442900_1.fastq.gz ERR1442630_2.fastq.gz,ERR1442720_2.fastq.gz,ERR1442810_2.fastq.gz,ERR1442900_2.fastq.gz ensGene > bin/log/elife_30860_2cell_5.log 2>&1

RNAseq_PE_exon_step.sh elife_30860_128cell_1 1,2 20 danRer11_2 ERR1442631_1.fastq.gz,ERR1442721_1.fastq.gz,ERR1442811_1.fastq.gz,ERR1442901_1.fastq.gz ERR1442631_2.fastq.gz,ERR1442721_2.fastq.gz,ERR1442811_2.fastq.gz,ERR1442901_2.fastq.gz ensGene > bin/log/elife_30860_128cell_1.log 2>&1
RNAseq_PE_exon_step.sh elife_30860_128cell_2 1,2 20 danRer11_2 ERR1442632_1.fastq.gz,ERR1442722_1.fastq.gz,ERR1442812_1.fastq.gz,ERR1442902_1.fastq.gz ERR1442632_2.fastq.gz,ERR1442722_2.fastq.gz,ERR1442812_2.fastq.gz,ERR1442902_2.fastq.gz ensGene > bin/log/elife_30860_128cell_2.log 2>&1
RNAseq_PE_exon_step.sh elife_30860_128cell_3 1,2 20 danRer11_2 ERR1442633_1.fastq.gz,ERR1442723_1.fastq.gz,ERR1442813_1.fastq.gz,ERR1442903_1.fastq.gz ERR1442633_2.fastq.gz,ERR1442723_2.fastq.gz,ERR1442813_2.fastq.gz,ERR1442903_2.fastq.gz ensGene > bin/log/elife_30860_128cell_3.log 2>&1
RNAseq_PE_exon_step.sh elife_30860_128cell_4 1,2 20 danRer11_2 ERR1442634_1.fastq.gz,ERR1442724_1.fastq.gz,ERR1442814_1.fastq.gz,ERR1442904_1.fastq.gz ERR1442634_2.fastq.gz,ERR1442724_2.fastq.gz,ERR1442814_2.fastq.gz,ERR1442904_2.fastq.gz ensGene > bin/log/elife_30860_128cell_4.log 2>&1
RNAseq_PE_exon_step.sh elife_30860_128cell_5 1,2 20 danRer11_2 ERR1442635_1.fastq.gz,ERR1442725_1.fastq.gz,ERR1442815_1.fastq.gz,ERR1442905_1.fastq.gz ERR1442635_2.fastq.gz,ERR1442725_2.fastq.gz,ERR1442815_2.fastq.gz,ERR1442905_2.fastq.gz ensGene > bin/log/elife_30860_128cell_5.log 2>&1
RNAseq_PE_exon_step.sh elife_30860_1kcell_1  1,2 20 danRer11_2 ERR1442641_1.fastq.gz,ERR1442731_1.fastq.gz,ERR1442821_1.fastq.gz,ERR1442911_1.fastq.gz ERR1442641_2.fastq.gz,ERR1442731_2.fastq.gz,ERR1442821_2.fastq.gz,ERR1442911_2.fastq.gz ensGene > bin/log/elife_30860_1kcell_1.log 2>&1
RNAseq_PE_exon_step.sh elife_30860_1kcell_2  1,2 20 danRer11_2 ERR1442642_1.fastq.gz,ERR1442732_1.fastq.gz,ERR1442822_1.fastq.gz,ERR1442912_1.fastq.gz ERR1442642_2.fastq.gz,ERR1442732_2.fastq.gz,ERR1442822_2.fastq.gz,ERR1442912_2.fastq.gz ensGene > bin/log/elife_30860_1kcell_2.log 2>&1
RNAseq_PE_exon_step.sh elife_30860_1kcell_3  1,2 20 danRer11_2 ERR1442643_1.fastq.gz,ERR1442733_1.fastq.gz,ERR1442823_1.fastq.gz,ERR1442913_1.fastq.gz ERR1442643_2.fastq.gz,ERR1442733_2.fastq.gz,ERR1442823_2.fastq.gz,ERR1442913_2.fastq.gz ensGene > bin/log/elife_30860_1kcell_3.log 2>&1
RNAseq_PE_exon_step.sh elife_30860_1kcell_4  1,2 20 danRer11_2 ERR1442644_1.fastq.gz,ERR1442734_1.fastq.gz,ERR1442824_1.fastq.gz,ERR1442914_1.fastq.gz ERR1442644_2.fastq.gz,ERR1442734_2.fastq.gz,ERR1442824_2.fastq.gz,ERR1442914_2.fastq.gz ensGene > bin/log/elife_30860_1kcell_4.log 2>&1
RNAseq_PE_exon_step.sh elife_30860_1kcell_5  1,2 20 danRer11_2 ERR1442645_1.fastq.gz,ERR1442735_1.fastq.gz,ERR1442825_1.fastq.gz,ERR1442915_1.fastq.gz ERR1442645_2.fastq.gz,ERR1442735_2.fastq.gz,ERR1442825_2.fastq.gz,ERR1442915_2.fastq.gz ensGene > bin/log/elife_30860_1kcell_5.log 2>&1

RNAseq_PE_exon_step.sh elife_30860_dome_1  1,2 20 danRer11_2 ERR1442621_1.fastq.gz,ERR1442711_1.fastq.gz,ERR1442801_1.fastq.gz,ERR1442891_1.fastq.gz ERR1442621_2.fastq.gz,ERR1442711_2.fastq.gz,ERR1442801_2.fastq.gz,ERR1442891_2.fastq.gz ensGene > bin/log/elife_30860_dome_1.log 2>&1
RNAseq_PE_exon_step.sh elife_30860_dome_2  1,2 20 danRer11_2 ERR1442622_1.fastq.gz,ERR1442712_1.fastq.gz,ERR1442802_1.fastq.gz,ERR1442892_1.fastq.gz ERR1442622_2.fastq.gz,ERR1442712_2.fastq.gz,ERR1442802_2.fastq.gz,ERR1442892_2.fastq.gz ensGene > bin/log/elife_30860_dome_2.log 2>&1
RNAseq_PE_exon_step.sh elife_30860_dome_3  1,2 20 danRer11_2 ERR1442623_1.fastq.gz,ERR1442713_1.fastq.gz,ERR1442803_1.fastq.gz,ERR1442893_1.fastq.gz ERR1442623_2.fastq.gz,ERR1442713_2.fastq.gz,ERR1442803_2.fastq.gz,ERR1442893_2.fastq.gz ensGene > bin/log/elife_30860_dome_3.log 2>&1
RNAseq_PE_exon_step.sh elife_30860_dome_4  1,2 20 danRer11_2 ERR1442624_1.fastq.gz,ERR1442714_1.fastq.gz,ERR1442804_1.fastq.gz,ERR1442894_1.fastq.gz ERR1442624_2.fastq.gz,ERR1442714_2.fastq.gz,ERR1442804_2.fastq.gz,ERR1442894_2.fastq.gz ensGene > bin/log/elife_30860_dome_4.log 2>&1
RNAseq_PE_exon_step.sh elife_30860_dome_5  1,2 20 danRer11_2 ERR1442625_1.fastq.gz,ERR1442715_1.fastq.gz,ERR1442805_1.fastq.gz,ERR1442895_1.fastq.gz ERR1442625_2.fastq.gz,ERR1442715_2.fastq.gz,ERR1442805_2.fastq.gz,ERR1442895_2.fastq.gz ensGene > bin/log/elife_30860_dome_5.log 2>&1
RNAseq_PE_exon_step.sh elife_30860_50epi_1 1,2 20 danRer11_2 ERR1442561_1.fastq.gz,ERR1442651_1.fastq.gz,ERR1442741_1.fastq.gz,ERR1442831_1.fastq.gz ERR1442561_2.fastq.gz,ERR1442651_2.fastq.gz,ERR1442741_2.fastq.gz,ERR1442831_2.fastq.gz ensGene > bin/log/elife_30860_50epi_1.log 2>&1
RNAseq_PE_exon_step.sh elife_30860_50epi_2 1,2 20 danRer11_2 ERR1442562_1.fastq.gz,ERR1442652_1.fastq.gz,ERR1442742_1.fastq.gz,ERR1442832_1.fastq.gz ERR1442562_2.fastq.gz,ERR1442652_2.fastq.gz,ERR1442742_2.fastq.gz,ERR1442832_2.fastq.gz ensGene > bin/log/elife_30860_50epi_2.log 2>&1
RNAseq_PE_exon_step.sh elife_30860_50epi_3 1,2 20 danRer11_2 ERR1442563_1.fastq.gz,ERR1442653_1.fastq.gz,ERR1442743_1.fastq.gz,ERR1442833_1.fastq.gz ERR1442563_2.fastq.gz,ERR1442653_2.fastq.gz,ERR1442743_2.fastq.gz,ERR1442833_2.fastq.gz ensGene > bin/log/elife_30860_50epi_3.log 2>&1
RNAseq_PE_exon_step.sh elife_30860_50epi_4 1,2 20 danRer11_2 ERR1442564_1.fastq.gz,ERR1442654_1.fastq.gz,ERR1442744_1.fastq.gz,ERR1442834_1.fastq.gz ERR1442564_2.fastq.gz,ERR1442654_2.fastq.gz,ERR1442744_2.fastq.gz,ERR1442834_2.fastq.gz ensGene > bin/log/elife_30860_50epi_4.log 2>&1
RNAseq_PE_exon_step.sh elife_30860_50epi_5 1,2 20 danRer11_2 ERR1442565_1.fastq.gz,ERR1442655_1.fastq.gz,ERR1442745_1.fastq.gz,ERR1442835_1.fastq.gz ERR1442565_2.fastq.gz,ERR1442655_2.fastq.gz,ERR1442745_2.fastq.gz,ERR1442835_2.fastq.gz ensGene > bin/log/elife_30860_50epi_5.log 2>&1

RNAseq_PE_exon_step.sh elife_30860_6hpf_1 1,2 20 danRer11_2 ERR1442601_1.fastq.gz,ERR1442691_1.fastq.gz,ERR1442781_1.fastq.gz,ERR1442871_1.fastq.gz ERR1442601_2.fastq.gz,ERR1442691_2.fastq.gz,ERR1442781_2.fastq.gz,ERR1442871_2.fastq.gz ensGene > bin/log/elife_30860_6hpf_1.log 2>&1
RNAseq_PE_exon_step.sh elife_30860_6hpf_2 1,2 20 danRer11_2 ERR1442602_1.fastq.gz,ERR1442692_1.fastq.gz,ERR1442782_1.fastq.gz,ERR1442872_1.fastq.gz ERR1442602_2.fastq.gz,ERR1442692_2.fastq.gz,ERR1442782_2.fastq.gz,ERR1442872_2.fastq.gz ensGene > bin/log/elife_30860_6hpf_2.log 2>&1
RNAseq_PE_exon_step.sh elife_30860_6hpf_3 1,2 20 danRer11_2 ERR1442603_1.fastq.gz,ERR1442693_1.fastq.gz,ERR1442783_1.fastq.gz,ERR1442873_1.fastq.gz ERR1442603_2.fastq.gz,ERR1442693_2.fastq.gz,ERR1442783_2.fastq.gz,ERR1442873_2.fastq.gz ensGene > bin/log/elife_30860_6hpf_3.log 2>&1
RNAseq_PE_exon_step.sh elife_30860_6hpf_4 1,2 20 danRer11_2 ERR1442604_1.fastq.gz,ERR1442694_1.fastq.gz,ERR1442784_1.fastq.gz,ERR1442874_1.fastq.gz ERR1442604_2.fastq.gz,ERR1442694_2.fastq.gz,ERR1442784_2.fastq.gz,ERR1442874_2.fastq.gz ensGene > bin/log/elife_30860_6hpf_4.log 2>&1
RNAseq_PE_exon_step.sh elife_30860_6hpf_5 1,2 20 danRer11_2 ERR1442605_1.fastq.gz,ERR1442695_1.fastq.gz,ERR1442785_1.fastq.gz,ERR1442875_1.fastq.gz ERR1442605_2.fastq.gz,ERR1442695_2.fastq.gz,ERR1442785_2.fastq.gz,ERR1442875_2.fastq.gz ensGene > bin/log/elife_30860_6hpf_5.log 2>&1
RNAseq_PE_exon_step.sh elife_30860_8hpf_1 1,2 20 danRer11_2 ERR1442606_1.fastq.gz,ERR1442696_1.fastq.gz,ERR1442786_1.fastq.gz,ERR1442876_1.fastq.gz ERR1442606_2.fastq.gz,ERR1442696_2.fastq.gz,ERR1442786_2.fastq.gz,ERR1442876_2.fastq.gz ensGene > bin/log/elife_30860_8hpf_1.log 2>&1
RNAseq_PE_exon_step.sh elife_30860_8hpf_2 1,2 20 danRer11_2 ERR1442607_1.fastq.gz,ERR1442697_1.fastq.gz,ERR1442787_1.fastq.gz,ERR1442877_1.fastq.gz ERR1442607_2.fastq.gz,ERR1442697_2.fastq.gz,ERR1442787_2.fastq.gz,ERR1442877_2.fastq.gz ensGene > bin/log/elife_30860_8hpf_2.log 2>&1
RNAseq_PE_exon_step.sh elife_30860_8hpf_3 1,2 20 danRer11_2 ERR1442608_1.fastq.gz,ERR1442698_1.fastq.gz,ERR1442788_1.fastq.gz,ERR1442878_1.fastq.gz ERR1442608_2.fastq.gz,ERR1442698_2.fastq.gz,ERR1442788_2.fastq.gz,ERR1442878_2.fastq.gz ensGene > bin/log/elife_30860_8hpf_3.log 2>&1
RNAseq_PE_exon_step.sh elife_30860_8hpf_4 1,2 20 danRer11_2 ERR1442609_1.fastq.gz,ERR1442699_1.fastq.gz,ERR1442789_1.fastq.gz,ERR1442879_1.fastq.gz ERR1442609_2.fastq.gz,ERR1442699_2.fastq.gz,ERR1442789_2.fastq.gz,ERR1442879_2.fastq.gz ensGene > bin/log/elife_30860_8hpf_4.log 2>&1
RNAseq_PE_exon_step.sh elife_30860_8hpf_5 1,2 20 danRer11_2 ERR1442610_1.fastq.gz,ERR1442700_1.fastq.gz,ERR1442790_1.fastq.gz,ERR1442880_1.fastq.gz ERR1442610_2.fastq.gz,ERR1442700_2.fastq.gz,ERR1442790_2.fastq.gz,ERR1442880_2.fastq.gz ensGene > bin/log/elife_30860_8hpf_5.log 2>&1

RNAseq_PE_exon_step.sh elife_30860_10.33hpf_1      1,2 20 danRer11_2 ERR1442636_1.fastq.gz,ERR1442726_1.fastq.gz,ERR1442816_1.fastq.gz,ERR1442906_1.fastq.gz ERR1442636_2.fastq.gz,ERR1442726_2.fastq.gz,ERR1442816_2.fastq.gz,ERR1442906_2.fastq.gz ensGene > bin/log/elife_30860_10.33hpf_1.log 2>&1
RNAseq_PE_exon_step.sh elife_30860_10.33hpf_2      1,2 20 danRer11_2 ERR1442637_1.fastq.gz,ERR1442727_1.fastq.gz,ERR1442817_1.fastq.gz,ERR1442907_1.fastq.gz ERR1442637_2.fastq.gz,ERR1442727_2.fastq.gz,ERR1442817_2.fastq.gz,ERR1442907_2.fastq.gz ensGene > bin/log/elife_30860_10.33hpf_2.log 2>&1
RNAseq_PE_exon_step.sh elife_30860_10.33hpf_3      1,2 20 danRer11_2 ERR1442638_1.fastq.gz,ERR1442728_1.fastq.gz,ERR1442818_1.fastq.gz,ERR1442908_1.fastq.gz ERR1442638_2.fastq.gz,ERR1442728_2.fastq.gz,ERR1442818_2.fastq.gz,ERR1442908_2.fastq.gz ensGene > bin/log/elife_30860_10.33hpf_3.log 2>&1
RNAseq_PE_exon_step.sh elife_30860_10.33hpf_4      1,2 20 danRer11_2 ERR1442639_1.fastq.gz,ERR1442729_1.fastq.gz,ERR1442819_1.fastq.gz,ERR1442909_1.fastq.gz ERR1442639_2.fastq.gz,ERR1442729_2.fastq.gz,ERR1442819_2.fastq.gz,ERR1442909_2.fastq.gz ensGene > bin/log/elife_30860_10.33hpf_4.log 2>&1
RNAseq_PE_exon_step.sh elife_30860_10.33hpf_5      1,2 20 danRer11_2 ERR1442640_1.fastq.gz,ERR1442730_1.fastq.gz,ERR1442820_1.fastq.gz,ERR1442910_1.fastq.gz ERR1442640_2.fastq.gz,ERR1442730_2.fastq.gz,ERR1442820_2.fastq.gz,ERR1442910_2.fastq.gz ensGene > bin/log/elife_30860_10.33hpf_5.log 2>&1
RNAseq_PE_exon_step.sh elife_30860_16hpf_somites_1 1,2 20 danRer11_2 ERR1442611_1.fastq.gz,ERR1442701_1.fastq.gz,ERR1442791_1.fastq.gz,ERR1442881_1.fastq.gz ERR1442611_2.fastq.gz,ERR1442701_2.fastq.gz,ERR1442791_2.fastq.gz,ERR1442881_2.fastq.gz ensGene > bin/log/elife_30860_16hpf_somites_1.log 2>&1
RNAseq_PE_exon_step.sh elife_30860_16hpf_somites_2 1,2 20 danRer11_2 ERR1442612_1.fastq.gz,ERR1442702_1.fastq.gz,ERR1442792_1.fastq.gz,ERR1442882_1.fastq.gz ERR1442612_2.fastq.gz,ERR1442702_2.fastq.gz,ERR1442792_2.fastq.gz,ERR1442882_2.fastq.gz ensGene > bin/log/elife_30860_16hpf_somites_2.log 2>&1
RNAseq_PE_exon_step.sh elife_30860_16hpf_somites_3 1,2 20 danRer11_2 ERR1442613_1.fastq.gz,ERR1442703_1.fastq.gz,ERR1442793_1.fastq.gz,ERR1442883_1.fastq.gz ERR1442613_2.fastq.gz,ERR1442703_2.fastq.gz,ERR1442793_2.fastq.gz,ERR1442883_2.fastq.gz ensGene > bin/log/elife_30860_16hpf_somites_3.log 2>&1
RNAseq_PE_exon_step.sh elife_30860_16hpf_somites_4 1,2 20 danRer11_2 ERR1442614_1.fastq.gz,ERR1442704_1.fastq.gz,ERR1442794_1.fastq.gz,ERR1442884_1.fastq.gz ERR1442614_2.fastq.gz,ERR1442704_2.fastq.gz,ERR1442794_2.fastq.gz,ERR1442884_2.fastq.gz ensGene > bin/log/elife_30860_16hpf_somites_4.log 2>&1
RNAseq_PE_exon_step.sh elife_30860_16hpf_somites_5 1,2 20 danRer11_2 ERR1442615_1.fastq.gz,ERR1442705_1.fastq.gz,ERR1442795_1.fastq.gz,ERR1442885_1.fastq.gz ERR1442615_2.fastq.gz,ERR1442705_2.fastq.gz,ERR1442795_2.fastq.gz,ERR1442885_2.fastq.gz ensGene > bin/log/elife_30860_16hpf_somites_5.log 2>&1

RNAseq_PE_exon_step.sh elife_30860_19hpf_somites_1 1,2 20 danRer11_2 ERR1442616_1.fastq.gz,ERR1442706_1.fastq.gz,ERR1442796_1.fastq.gz,ERR1442886_1.fastq.gz ERR1442616_2.fastq.gz,ERR1442706_2.fastq.gz,ERR1442796_2.fastq.gz,ERR1442886_2.fastq.gz ensGene > bin/log/elife_30860_19hpf_somites_1.log 2>&1
RNAseq_PE_exon_step.sh elife_30860_19hpf_somites_2 1,2 20 danRer11_2 ERR1442617_1.fastq.gz,ERR1442707_1.fastq.gz,ERR1442797_1.fastq.gz,ERR1442887_1.fastq.gz ERR1442617_2.fastq.gz,ERR1442707_2.fastq.gz,ERR1442797_2.fastq.gz,ERR1442887_2.fastq.gz ensGene > bin/log/elife_30860_19hpf_somites_2.log 2>&1
RNAseq_PE_exon_step.sh elife_30860_19hpf_somites_3 1,2 20 danRer11_2 ERR1442618_1.fastq.gz,ERR1442708_1.fastq.gz,ERR1442798_1.fastq.gz,ERR1442888_1.fastq.gz ERR1442618_2.fastq.gz,ERR1442708_2.fastq.gz,ERR1442798_2.fastq.gz,ERR1442888_2.fastq.gz ensGene > bin/log/elife_30860_19hpf_somites_3.log 2>&1
RNAseq_PE_exon_step.sh elife_30860_19hpf_somites_4 1,2 20 danRer11_2 ERR1442619_1.fastq.gz,ERR1442709_1.fastq.gz,ERR1442799_1.fastq.gz,ERR1442889_1.fastq.gz ERR1442619_2.fastq.gz,ERR1442709_2.fastq.gz,ERR1442799_2.fastq.gz,ERR1442889_2.fastq.gz ensGene > bin/log/elife_30860_19hpf_somites_4.log 2>&1
RNAseq_PE_exon_step.sh elife_30860_19hpf_somites_5 1,2 20 danRer11_2 ERR1442620_1.fastq.gz,ERR1442710_1.fastq.gz,ERR1442800_1.fastq.gz,ERR1442890_1.fastq.gz ERR1442620_2.fastq.gz,ERR1442710_2.fastq.gz,ERR1442800_2.fastq.gz,ERR1442890_2.fastq.gz ensGene > bin/log/elife_30860_19hpf_somites_5.log 2>&1
RNAseq_PE_exon_step.sh elife_30860_24hpf_1         1,2 20 danRer11_2 ERR1442566_1.fastq.gz,ERR1442656_1.fastq.gz,ERR1442746_1.fastq.gz,ERR1442836_1.fastq.gz ERR1442566_2.fastq.gz,ERR1442656_2.fastq.gz,ERR1442746_2.fastq.gz,ERR1442836_2.fastq.gz ensGene > bin/log/elife_30860_24hpf_1.log 2>&1
RNAseq_PE_exon_step.sh elife_30860_24hpf_2         1,2 20 danRer11_2 ERR1442567_1.fastq.gz,ERR1442657_1.fastq.gz,ERR1442747_1.fastq.gz,ERR1442837_1.fastq.gz ERR1442567_2.fastq.gz,ERR1442657_2.fastq.gz,ERR1442747_2.fastq.gz,ERR1442837_2.fastq.gz ensGene > bin/log/elife_30860_24hpf_2.log 2>&1
RNAseq_PE_exon_step.sh elife_30860_24hpf_3         1,2 20 danRer11_2 ERR1442568_1.fastq.gz,ERR1442658_1.fastq.gz,ERR1442748_1.fastq.gz,ERR1442838_1.fastq.gz ERR1442568_2.fastq.gz,ERR1442658_2.fastq.gz,ERR1442748_2.fastq.gz,ERR1442838_2.fastq.gz ensGene > bin/log/elife_30860_24hpf_3.log 2>&1
RNAseq_PE_exon_step.sh elife_30860_24hpf_4         1,2 20 danRer11_2 ERR1442569_1.fastq.gz,ERR1442659_1.fastq.gz,ERR1442749_1.fastq.gz,ERR1442839_1.fastq.gz ERR1442569_2.fastq.gz,ERR1442659_2.fastq.gz,ERR1442749_2.fastq.gz,ERR1442839_2.fastq.gz ensGene > bin/log/elife_30860_24hpf_4.log 2>&1
RNAseq_PE_exon_step.sh elife_30860_24hpf_5         1,2 20 danRer11_2 ERR1442570_1.fastq.gz,ERR1442660_1.fastq.gz,ERR1442750_1.fastq.gz,ERR1442840_1.fastq.gz ERR1442570_2.fastq.gz,ERR1442660_2.fastq.gz,ERR1442750_2.fastq.gz,ERR1442840_2.fastq.gz ensGene > bin/log/elife_30860_24hpf_5.log 2>&1

RNAseq_PE_exon_step.sh elife_30860_30hpf_1 1,2 20 danRer11_2 ERR1442571_1.fastq.gz,ERR1442661_1.fastq.gz,ERR1442751_1.fastq.gz,ERR1442841_1.fastq.gz ERR1442571_2.fastq.gz,ERR1442661_2.fastq.gz,ERR1442751_2.fastq.gz,ERR1442841_2.fastq.gz ensGene > bin/log/elife_30860_30hpf_1.log 2>&1
RNAseq_PE_exon_step.sh elife_30860_30hpf_2 1,2 20 danRer11_2 ERR1442572_1.fastq.gz,ERR1442662_1.fastq.gz,ERR1442752_1.fastq.gz,ERR1442842_1.fastq.gz ERR1442572_2.fastq.gz,ERR1442662_2.fastq.gz,ERR1442752_2.fastq.gz,ERR1442842_2.fastq.gz ensGene > bin/log/elife_30860_30hpf_2.log 2>&1
RNAseq_PE_exon_step.sh elife_30860_30hpf_3 1,2 20 danRer11_2 ERR1442573_1.fastq.gz,ERR1442663_1.fastq.gz,ERR1442753_1.fastq.gz,ERR1442843_1.fastq.gz ERR1442573_2.fastq.gz,ERR1442663_2.fastq.gz,ERR1442753_2.fastq.gz,ERR1442843_2.fastq.gz ensGene > bin/log/elife_30860_30hpf_3.log 2>&1
RNAseq_PE_exon_step.sh elife_30860_30hpf_4 1,2 20 danRer11_2 ERR1442574_1.fastq.gz,ERR1442664_1.fastq.gz,ERR1442754_1.fastq.gz,ERR1442844_1.fastq.gz ERR1442574_2.fastq.gz,ERR1442664_2.fastq.gz,ERR1442754_2.fastq.gz,ERR1442844_2.fastq.gz ensGene > bin/log/elife_30860_30hpf_4.log 2>&1
RNAseq_PE_exon_step.sh elife_30860_30hpf_5 1,2 20 danRer11_2 ERR1442575_1.fastq.gz,ERR1442665_1.fastq.gz,ERR1442755_1.fastq.gz,ERR1442845_1.fastq.gz ERR1442575_2.fastq.gz,ERR1442665_2.fastq.gz,ERR1442755_2.fastq.gz,ERR1442845_2.fastq.gz ensGene > bin/log/elife_30860_30hpf_5.log 2>&1

RNAseq_PE_exon_step.sh elife_30860_36hpf_1 1,2 20 danRer11_2 ERR1442576_1.fastq.gz,ERR1442666_1.fastq.gz,ERR1442756_1.fastq.gz,ERR1442846_1.fastq.gz ERR1442576_2.fastq.gz,ERR1442666_2.fastq.gz,ERR1442756_2.fastq.gz,ERR1442846_2.fastq.gz ensGene > bin/log/elife_30860_36hpf_1.log 2>&1
RNAseq_PE_exon_step.sh elife_30860_36hpf_2 1,2 20 danRer11_2 ERR1442577_1.fastq.gz,ERR1442667_1.fastq.gz,ERR1442757_1.fastq.gz,ERR1442847_1.fastq.gz ERR1442577_2.fastq.gz,ERR1442667_2.fastq.gz,ERR1442757_2.fastq.gz,ERR1442847_2.fastq.gz ensGene > bin/log/elife_30860_36hpf_2.log 2>&1
RNAseq_PE_exon_step.sh elife_30860_36hpf_3 1,2 20 danRer11_2 ERR1442578_1.fastq.gz,ERR1442668_1.fastq.gz,ERR1442758_1.fastq.gz,ERR1442848_1.fastq.gz ERR1442578_2.fastq.gz,ERR1442668_2.fastq.gz,ERR1442758_2.fastq.gz,ERR1442848_2.fastq.gz ensGene > bin/log/elife_30860_36hpf_3.log 2>&1
RNAseq_PE_exon_step.sh elife_30860_36hpf_4 1,2 20 danRer11_2 ERR1442579_1.fastq.gz,ERR1442669_1.fastq.gz,ERR1442759_1.fastq.gz,ERR1442849_1.fastq.gz ERR1442579_2.fastq.gz,ERR1442669_2.fastq.gz,ERR1442759_2.fastq.gz,ERR1442849_2.fastq.gz ensGene > bin/log/elife_30860_36hpf_4.log 2>&1
RNAseq_PE_exon_step.sh elife_30860_36hpf_5 1,2 20 danRer11_2 ERR1442580_1.fastq.gz,ERR1442670_1.fastq.gz,ERR1442760_1.fastq.gz,ERR1442850_1.fastq.gz ERR1442580_2.fastq.gz,ERR1442670_2.fastq.gz,ERR1442760_2.fastq.gz,ERR1442850_2.fastq.gz ensGene > bin/log/elife_30860_36hpf_5.log 2>&1

RNAseq_PE_exon_step.sh elife_30860_2dpf_1 1,2 25 danRer11_2 ERR1442581_1.fastq.gz,ERR1442671_1.fastq.gz,ERR1442761_1.fastq.gz,ERR1442851_1.fastq.gz ERR1442581_2.fastq.gz,ERR1442671_2.fastq.gz,ERR1442761_2.fastq.gz,ERR1442851_2.fastq.gz ensGene > bin/log/elife_30860_2dpf_1.log 2>&1
RNAseq_PE_exon_step.sh elife_30860_2dpf_2 1,2 25 danRer11_2 ERR1442582_1.fastq.gz,ERR1442672_1.fastq.gz,ERR1442762_1.fastq.gz,ERR1442852_1.fastq.gz ERR1442582_2.fastq.gz,ERR1442672_2.fastq.gz,ERR1442762_2.fastq.gz,ERR1442852_2.fastq.gz ensGene > bin/log/elife_30860_2dpf_2.log 2>&1
RNAseq_PE_exon_step.sh elife_30860_2dpf_3 1,2 25 danRer11_2 ERR1442583_1.fastq.gz,ERR1442673_1.fastq.gz,ERR1442763_1.fastq.gz,ERR1442853_1.fastq.gz ERR1442583_2.fastq.gz,ERR1442673_2.fastq.gz,ERR1442763_2.fastq.gz,ERR1442853_2.fastq.gz ensGene > bin/log/elife_30860_2dpf_3.log 2>&1
RNAseq_PE_exon_step.sh elife_30860_2dpf_4 1,2 25 danRer11_2 ERR1442584_1.fastq.gz,ERR1442674_1.fastq.gz,ERR1442764_1.fastq.gz,ERR1442854_1.fastq.gz ERR1442584_2.fastq.gz,ERR1442674_2.fastq.gz,ERR1442764_2.fastq.gz,ERR1442854_2.fastq.gz ensGene > bin/log/elife_30860_2dpf_4.log 2>&1
RNAseq_PE_exon_step.sh elife_30860_2dpf_5 1,2 25 danRer11_2 ERR1442585_1.fastq.gz,ERR1442675_1.fastq.gz,ERR1442765_1.fastq.gz,ERR1442855_1.fastq.gz ERR1442585_2.fastq.gz,ERR1442675_2.fastq.gz,ERR1442765_2.fastq.gz,ERR1442855_2.fastq.gz ensGene > bin/log/elife_30860_2dpf_5.log 2>&1
RNAseq_PE_exon_step.sh elife_30860_3dpf_1 1,2 25 danRer11_2 ERR1442586_1.fastq.gz,ERR1442676_1.fastq.gz,ERR1442766_1.fastq.gz,ERR1442856_1.fastq.gz ERR1442586_2.fastq.gz,ERR1442676_2.fastq.gz,ERR1442766_2.fastq.gz,ERR1442856_2.fastq.gz ensGene > bin/log/elife_30860_3dpf_1.log 2>&1
RNAseq_PE_exon_step.sh elife_30860_3dpf_2 1,2 25 danRer11_2 ERR1442587_1.fastq.gz,ERR1442677_1.fastq.gz,ERR1442767_1.fastq.gz,ERR1442857_1.fastq.gz ERR1442587_2.fastq.gz,ERR1442677_2.fastq.gz,ERR1442767_2.fastq.gz,ERR1442857_2.fastq.gz ensGene > bin/log/elife_30860_3dpf_2.log 2>&1
RNAseq_PE_exon_step.sh elife_30860_3dpf_3 1,2 25 danRer11_2 ERR1442588_1.fastq.gz,ERR1442678_1.fastq.gz,ERR1442768_1.fastq.gz,ERR1442858_1.fastq.gz ERR1442588_2.fastq.gz,ERR1442678_2.fastq.gz,ERR1442768_2.fastq.gz,ERR1442858_2.fastq.gz ensGene > bin/log/elife_30860_3dpf_3.log 2>&1
RNAseq_PE_exon_step.sh elife_30860_3dpf_4 1,2 25 danRer11_2 ERR1442589_1.fastq.gz,ERR1442679_1.fastq.gz,ERR1442769_1.fastq.gz,ERR1442859_1.fastq.gz ERR1442589_2.fastq.gz,ERR1442679_2.fastq.gz,ERR1442769_2.fastq.gz,ERR1442859_2.fastq.gz ensGene > bin/log/elife_30860_3dpf_4.log 2>&1
RNAseq_PE_exon_step.sh elife_30860_3dpf_5 1,2 25 danRer11_2 ERR1442590_1.fastq.gz,ERR1442680_1.fastq.gz,ERR1442770_1.fastq.gz,ERR1442860_1.fastq.gz ERR1442590_2.fastq.gz,ERR1442680_2.fastq.gz,ERR1442770_2.fastq.gz,ERR1442860_2.fastq.gz ensGene > bin/log/elife_30860_3dpf_5.log 2>&1
RNAseq_PE_exon_step.sh elife_30860_4dpf_1 1,2 25 danRer11_2 ERR1442591_1.fastq.gz,ERR1442681_1.fastq.gz,ERR1442771_1.fastq.gz,ERR1442861_1.fastq.gz ERR1442591_2.fastq.gz,ERR1442681_2.fastq.gz,ERR1442771_2.fastq.gz,ERR1442861_2.fastq.gz ensGene > bin/log/elife_30860_4dpf_1.log 2>&1
RNAseq_PE_exon_step.sh elife_30860_4dpf_2 1,2 25 danRer11_2 ERR1442592_1.fastq.gz,ERR1442682_1.fastq.gz,ERR1442772_1.fastq.gz,ERR1442862_1.fastq.gz ERR1442592_2.fastq.gz,ERR1442682_2.fastq.gz,ERR1442772_2.fastq.gz,ERR1442862_2.fastq.gz ensGene > bin/log/elife_30860_4dpf_2.log 2>&1
RNAseq_PE_exon_step.sh elife_30860_4dpf_3 1,2 25 danRer11_2 ERR1442593_1.fastq.gz,ERR1442683_1.fastq.gz,ERR1442773_1.fastq.gz,ERR1442863_1.fastq.gz ERR1442593_2.fastq.gz,ERR1442683_2.fastq.gz,ERR1442773_2.fastq.gz,ERR1442863_2.fastq.gz ensGene > bin/log/elife_30860_4dpf_3.log 2>&1
RNAseq_PE_exon_step.sh elife_30860_4dpf_4 1,2 25 danRer11_2 ERR1442594_1.fastq.gz,ERR1442684_1.fastq.gz,ERR1442774_1.fastq.gz,ERR1442864_1.fastq.gz ERR1442594_2.fastq.gz,ERR1442684_2.fastq.gz,ERR1442774_2.fastq.gz,ERR1442864_2.fastq.gz ensGene > bin/log/elife_30860_4dpf_4.log 2>&1
RNAseq_PE_exon_step.sh elife_30860_4dpf_5 1,2 25 danRer11_2 ERR1442595_1.fastq.gz,ERR1442685_1.fastq.gz,ERR1442775_1.fastq.gz,ERR1442865_1.fastq.gz ERR1442595_2.fastq.gz,ERR1442685_2.fastq.gz,ERR1442775_2.fastq.gz,ERR1442865_2.fastq.gz ensGene > bin/log/elife_30860_4dpf_5.log 2>&1
RNAseq_PE_exon_step.sh elife_30860_5dpf_1 1,2 25 danRer11_2 ERR1442596_1.fastq.gz,ERR1442686_1.fastq.gz,ERR1442776_1.fastq.gz,ERR1442866_1.fastq.gz ERR1442596_2.fastq.gz,ERR1442686_2.fastq.gz,ERR1442776_2.fastq.gz,ERR1442866_2.fastq.gz ensGene > bin/log/elife_30860_5dpf_1.log 2>&1
RNAseq_PE_exon_step.sh elife_30860_5dpf_2 1,2 25 danRer11_2 ERR1442597_1.fastq.gz,ERR1442687_1.fastq.gz,ERR1442777_1.fastq.gz,ERR1442867_1.fastq.gz ERR1442597_2.fastq.gz,ERR1442687_2.fastq.gz,ERR1442777_2.fastq.gz,ERR1442867_2.fastq.gz ensGene > bin/log/elife_30860_5dpf_2.log 2>&1
RNAseq_PE_exon_step.sh elife_30860_5dpf_3 1,2 25 danRer11_2 ERR1442598_1.fastq.gz,ERR1442688_1.fastq.gz,ERR1442778_1.fastq.gz,ERR1442868_1.fastq.gz ERR1442598_2.fastq.gz,ERR1442688_2.fastq.gz,ERR1442778_2.fastq.gz,ERR1442868_2.fastq.gz ensGene > bin/log/elife_30860_5dpf_3.log 2>&1
RNAseq_PE_exon_step.sh elife_30860_5dpf_4 1,2 25 danRer11_2 ERR1442599_1.fastq.gz,ERR1442689_1.fastq.gz,ERR1442779_1.fastq.gz,ERR1442869_1.fastq.gz ERR1442599_2.fastq.gz,ERR1442689_2.fastq.gz,ERR1442779_2.fastq.gz,ERR1442869_2.fastq.gz ensGene > bin/log/elife_30860_5dpf_4.log 2>&1
RNAseq_PE_exon_step.sh elife_30860_5dpf_5 1,2 25 danRer11_2 ERR1442600_1.fastq.gz,ERR1442690_1.fastq.gz,ERR1442780_1.fastq.gz,ERR1442870_1.fastq.gz ERR1442600_2.fastq.gz,ERR1442690_2.fastq.gz,ERR1442780_2.fastq.gz,ERR1442870_2.fastq.gz ensGene > bin/log/elife_30860_5dpf_5.log 2>&1


# 05
RNAseq_SE_exon_step.sh 36hpf_rep2 1,2 20 danRer11_2 SRR8257204.fastq.gz ensGene > bin/log/36hpf_rep2.log 2>&1
RNAseq_SE_exon_step.sh 36hpf_rep1 1,2 20 danRer11_2 SRR8257203.fastq.gz ensGene > bin/log/36hpf_rep1.log 2>&1
RNAseq_SE_exon_step.sh 36hpf_rep3 1,2 20 danRer11_2 SRR8257205.fastq.gz ensGene > bin/log/36hpf_rep3.log 2>&1

# 06 embryo & tissue
RNAseq_PE_exon_step.sh 36hpf_endothelial_rep1 1,2 20 danRer11_2 SRR7909899_1.fastq.gz SRR7909899_2.fastq.gz ensGene > bin/log/36hpf_endothelial_rep1.log 2>&1
RNAseq_PE_exon_step.sh 36hpf_endothelial_rep2 1,2 20 danRer11_2 SRR7909900_1.fastq.gz SRR7909900_2.fastq.gz ensGene > bin/log/36hpf_endothelial_rep2.log 2>&1
RNAseq_PE_exon_step.sh        36hpf_HSPC_rep1 1,2 20 danRer11_2 SRR7909901_1.fastq.gz SRR7909901_2.fastq.gz ensGene > bin/log/36hpf_HSPC_rep1.log 2>&1
RNAseq_PE_exon_step.sh        36hpf_HSPC_rep2 1,2 20 danRer11_2 SRR7909902_1.fastq.gz SRR7909902_2.fastq.gz ensGene > bin/log/36hpf_HSPC_rep2.log 2>&1
RNAseq_PE_exon_step.sh         36hpf_NHC_rep1 1,2 20 danRer11_2 SRR7909903_1.fastq.gz SRR7909903_2.fastq.gz ensGene > bin/log/36hpf_NHC_rep1.log 2>&1
RNAseq_PE_exon_step.sh         36hpf_NHC_rep2 1,2 20 danRer11_2 SRR7909904_1.fastq.gz SRR7909904_2.fastq.gz ensGene > bin/log/36hpf_NHC_rep2.log 2>&1

RNAseq_PE_exon_step.sh        52hpf_CHT_NHC_rep1 1,2 20 danRer11_2 SRR7909905_1.fastq.gz SRR7909905_2.fastq.gz ensGene > bin/log/52hpf_CHT_NHC_rep1.log 2>&1
RNAseq_PE_exon_step.sh        52hpf_CHT_NHC_rep2 1,2 20 danRer11_2 SRR7909906_1.fastq.gz SRR7909906_2.fastq.gz ensGene > bin/log/52hpf_CHT_NHC_rep2.log 2>&1
RNAseq_PE_exon_step.sh 3dpf_CHT_endothelial_rep1 1,2 20 danRer11_2 SRR7909907_1.fastq.gz SRR7909907_2.fastq.gz ensGene > bin/log/3dpf_CHT_endothelial_rep1.log 2>&1
RNAseq_PE_exon_step.sh 3dpf_CHT_endothelial_rep2 1,2 20 danRer11_2 SRR7909908_1.fastq.gz SRR7909908_2.fastq.gz ensGene > bin/log/3dpf_CHT_endothelial_rep2.log 2>&1
RNAseq_PE_exon_step.sh        3dpf_CHT_HSPC_rep1 1,2 20 danRer11_2 SRR7909909_1.fastq.gz SRR7909909_2.fastq.gz ensGene > bin/log/3dpf_CHT_HSPC_rep1.log 2>&1
RNAseq_PE_exon_step.sh        3dpf_CHT_HSPC_rep2 1,2 20 danRer11_2 SRR7909910_1.fastq.gz SRR7909910_2.fastq.gz ensGene > bin/log/3dpf_CHT_HSPC_rep2.log 2>&1
RNAseq_PE_exon_step.sh         3dpf_CHT_NHC_rep1 1,2 20 danRer11_2 SRR7909911_1.fastq.gz SRR7909911_2.fastq.gz ensGene > bin/log/3dpf_CHT_NHC_rep1.log 2>&1
RNAseq_PE_exon_step.sh         3dpf_CHT_NHC_rep2 1,2 20 danRer11_2 SRR7909912_1.fastq.gz SRR7909912_2.fastq.gz ensGene > bin/log/3dpf_CHT_NHC_rep2.log 2>&1
RNAseq_PE_exon_step.sh 4dpf_CHT_endothelial_rep1 1,2 20 danRer11_2 SRR7909913_1.fastq.gz SRR7909913_2.fastq.gz ensGene > bin/log/4dpf_CHT_endothelial_rep1.log 2>&1
RNAseq_PE_exon_step.sh 4dpf_CHT_endothelial_rep2 1,2 20 danRer11_2 SRR7909914_1.fastq.gz SRR7909914_2.fastq.gz ensGene > bin/log/4dpf_CHT_endothelial_rep2.log 2>&1
RNAseq_PE_exon_step.sh        4dpf_CHT_HSPC_rep1 1,2 20 danRer11_2 SRR7909915_1.fastq.gz SRR7909915_2.fastq.gz ensGene > bin/log/4dpf_CHT_HSPC_rep1.log 2>&1
RNAseq_PE_exon_step.sh        4dpf_CHT_HSPC_rep2 1,2 20 danRer11_2 SRR7909916_1.fastq.gz SRR7909916_2.fastq.gz ensGene > bin/log/4dpf_CHT_HSPC_rep2.log 2>&1
RNAseq_PE_exon_step.sh         4dpf_CHT_NHC_rep1 1,2 20 danRer11_2 SRR7909917_1.fastq.gz SRR7909917_2.fastq.gz ensGene > bin/log/4dpf_CHT_NHC_rep1.log 2>&1
RNAseq_PE_exon_step.sh         4dpf_CHT_NHC_rep2 1,2 20 danRer11_2 SRR7909918_1.fastq.gz SRR7909918_2.fastq.gz ensGene > bin/log/4dpf_CHT_NHC_rep2.log 2>&1
RNAseq_PE_exon_step.sh     3mpf_kidney_HSPC_rep1 1,2 20 danRer11_2 SRR7909919_1.fastq.gz SRR7909919_2.fastq.gz ensGene > bin/log/3mpf_kidney_HSPC_rep1.log 2>&1
RNAseq_PE_exon_step.sh     3mpf_kidney_HSPC_rep2 1,2 20 danRer11_2 SRR7909920_1.fastq.gz SRR7909920_2.fastq.gz ensGene > bin/log/3mpf_kidney_HSPC_rep2.log 2>&1
RNAseq_PE_exon_step.sh      3mpf_kidney_NHC_rep1 1,2 20 danRer11_2 SRR7909921_1.fastq.gz SRR7909921_2.fastq.gz ensGene > bin/log/3mpf_kidney_NHC_rep1.log 2>&1
RNAseq_PE_exon_step.sh      3mpf_kidney_NHC_rep2 1,2 20 danRer11_2 SRR7909922_1.fastq.gz SRR7909922_2.fastq.gz ensGene > bin/log/3mpf_kidney_NHC_rep2.log 2>&1

# 07 
RNAseq_SE_exon_step.sh 28hpf_rep3 1,2 20 danRer11_2 SRR10767278.fastq.gz ensGene > bin/log/28hpf_rep3.log 2>&1
RNAseq_SE_exon_step.sh 28hpf_rep4 1,2 20 danRer11_2 SRR10767279.fastq.gz ensGene > bin/log/28hpf_rep4.log 2>&1
RNAseq_SE_exon_step.sh 28hpf_rep5 1,2 20 danRer11_2 SRR10767280.fastq.gz ensGene > bin/log/28hpf_rep5.log 2>&1
RNAseq_SE_exon_step.sh 36hpf_rep4 1,2 20 danRer11_2 SRR10767287.fastq.gz ensGene > bin/log/36hpf_rep4.log 2>&1
RNAseq_SE_exon_step.sh 36hpf_rep5 1,2 20 danRer11_2 SRR10767288.fastq.gz ensGene > bin/log/36hpf_rep5.log 2>&1
RNAseq_SE_exon_step.sh 36hpf_rep6 1,2 20 danRer11_2 SRR10767289.fastq.gz ensGene > bin/log/36hpf_rep6.log 2>&1

# 08
RNAseq_SE_exon_step.sh 24hpf_rep1 1,2 20 danRer11_2 SRR7757825.fastq.gz                         ensGene > bin/log/24hpf_rep1.log 2>&1
RNAseq_SE_exon_step.sh 24hpf_rep2 1,2 20 danRer11_2 SRR7757826.fastq.gz                         ensGene > bin/log/24hpf_rep2.log 2>&1
RNAseq_PE_exon_step.sh 24hpf_rep3 1,2 20 danRer11_2 SRR7757827_1.fastq.gz SRR7757827_2.fastq.gz ensGene > bin/log/24hpf_rep3.log 2>&1
RNAseq_PE_exon_step.sh 24hpf_rep4 1,2 20 danRer11_2 SRR7757828_1.fastq.gz SRR7757828_2.fastq.gz ensGene > bin/log/24hpf_rep4.log 2>&1
RNAseq_PE_exon_step.sh 24hpf_rep5 1,2 20 danRer11_2 SRR7757829_1.fastq.gz SRR7757829_2.fastq.gz ensGene > bin/log/24hpf_rep5.log 2>&1
RNAseq_PE_exon_step.sh 24hpf_rep6 1,2 20 danRer11_2 SRR7757830_1.fastq.gz SRR7757830_2.fastq.gz ensGene > bin/log/24hpf_rep6.log 2>&1
RNAseq_SE_exon_step.sh 1cell_rep1 1,2 20 danRer11_2 SRR9962799.fastq.gz                         ensGene > bin/log/1cell_rep1.log 2>&1
RNAseq_SE_exon_step.sh 1cell_rep2 1,2 20 danRer11_2 SRR9962800.fastq.gz                         ensGene > bin/log/1cell_rep2.log 2>&1
RNAseq_PE_exon_step.sh 1cell_rep3 1,2 20 danRer11_2 SRR9962801_1.fastq.gz SRR9962801_2.fastq.gz ensGene > bin/log/1cell_rep3.log 2>&1
RNAseq_PE_exon_step.sh 1cell_rep4 1,2 20 danRer11_2 SRR9962802_1.fastq.gz SRR9962802_2.fastq.gz ensGene > bin/log/1cell_rep4.log 2>&1
RNAseq_PE_exon_step.sh 1cell_rep5 1,2 20 danRer11_2 SRR9962803_1.fastq.gz SRR9962803_2.fastq.gz ensGene > bin/log/1cell_rep5.log 2>&1
RNAseq_PE_exon_step.sh  high_rep1 1,2 20 danRer11_2 SRR9962817_1.fastq.gz SRR9962817_2.fastq.gz ensGene > bin/log/high_rep1.log 2>&1
RNAseq_PE_exon_step.sh  high_rep2 1,2 20 danRer11_2 SRR9962818_1.fastq.gz SRR9962818_2.fastq.gz ensGene > bin/log/high_rep2.log 2>&1
RNAseq_PE_exon_step.sh  high_rep3 1,2 20 danRer11_2 SRR9962819_1.fastq.gz SRR9962819_2.fastq.gz ensGene > bin/log/high_rep3.log 2>&1
RNAseq_PE_exon_step.sh  high_rep4 1,2 20 danRer11_2 SRR9962820_1.fastq.gz SRR9962820_2.fastq.gz ensGene > bin/log/high_rep4.log 2>&1
RNAseq_PE_exon_step.sh  high_rep5 1,2 20 danRer11_2 SRR9962821_1.fastq.gz SRR9962821_2.fastq.gz ensGene > bin/log/high_rep5.log 2>&1

# 09 embryo & tissue
RNAseq_PE_exon_step.sh 36hpf_neural_crest_rep1 1,2 20 danRer11_2 SRR9879913_1.fastq.gz SRR9879913_2.fastq.gz ensGene > bin/log/36hpf_neural_crest_rep1.log 2>&1 
RNAseq_PE_exon_step.sh 36hpf_neural_crest_rep2 1,2 20 danRer11_2 SRR9879914_1.fastq.gz SRR9879914_2.fastq.gz ensGene > bin/log/36hpf_neural_crest_rep2.log 2>&1 
RNAseq_PE_exon_step.sh 36hpf_neural_crest_rep3 1,2 20 danRer11_2 SRR9879915_1.fastq.gz SRR9879915_2.fastq.gz ensGene > bin/log/36hpf_neural_crest_rep3.log 2>&1 
RNAseq_PE_exon_step.sh 72hpf_neural_crest_rep1 1,2 20 danRer11_2 SRR9879916_1.fastq.gz SRR9879916_2.fastq.gz ensGene > bin/log/72hpf_neural_crest_rep1.log 2>&1
RNAseq_PE_exon_step.sh 72hpf_neural_crest_rep2 1,2 20 danRer11_2 SRR9879917_1.fastq.gz SRR9879917_2.fastq.gz ensGene > bin/log/72hpf_neural_crest_rep2.log 2>&1
RNAseq_PE_exon_step.sh 72hpf_neural_crest_rep3 1,2 20 danRer11_2 SRR9879918_1.fastq.gz SRR9879918_2.fastq.gz ensGene > bin/log/72hpf_neural_crest_rep3.log 2>&1

# 10 embryo & tissue
RNAseq_SE_exon_step.sh   20ss_allskin_rep1 1,2 20 danRer11_2 SRR9211484.fastq.gz ensGene > bin/log/20ss_allskin_rep1.log 2>&1
RNAseq_SE_exon_step.sh   20ss_allskin_rep2 1,2 20 danRer11_2 SRR9211485.fastq.gz ensGene > bin/log/20ss_allskin_rep2.log 2>&1
RNAseq_SE_exon_step.sh  52hpf_allskin_rep1 1,2 20 danRer11_2 SRR9211488.fastq.gz ensGene > bin/log/52hpf_allskin_rep1.log 2>&1
RNAseq_SE_exon_step.sh  52hpf_allskin_rep2 1,2 20 danRer11_2 SRR9211489.fastq.gz ensGene > bin/log/52hpf_allskin_rep2.log 2>&1
RNAseq_SE_exon_step.sh    52hpf_basal_rep1 1,2 20 danRer11_2 SRR9211491.fastq.gz ensGene > bin/log/52hpf_basal_rep1.log 2>&1
RNAseq_SE_exon_step.sh    52hpf_basal_rep2 1,2 20 danRer11_2 SRR9211492.fastq.gz ensGene > bin/log/52hpf_basal_rep2.log 2>&1
RNAseq_SE_exon_step.sh 52hpf_periderm_rep1 1,2 20 danRer11_2 SRR9211493.fastq.gz ensGene > bin/log/52hpf_periderm_rep1.log 2>&1
RNAseq_SE_exon_step.sh 52hpf_periderm_rep2 1,2 20 danRer11_2 SRR9211494.fastq.gz ensGene > bin/log/52hpf_periderm_rep2.log 2>&1
RNAseq_SE_exon_step.sh  72hpf_allskin_rep1 1,2 20 danRer11_2 SRR9211497.fastq.gz ensGene > bin/log/72hpf_allskin_rep1.log 2>&1
RNAseq_SE_exon_step.sh  72hpf_allskin_rep2 1,2 20 danRer11_2 SRR9211498.fastq.gz ensGene > bin/log/72hpf_allskin_rep2.log 2>&1
RNAseq_SE_exon_step.sh    72hpf_basal_rep1 1,2 20 danRer11_2 SRR9211501.fastq.gz ensGene > bin/log/72hpf_basal_rep1.log 2>&1
RNAseq_SE_exon_step.sh    72hpf_basal_rep2 1,2 20 danRer11_2 SRR9211502.fastq.gz ensGene > bin/log/72hpf_basal_rep2.log 2>&1
RNAseq_SE_exon_step.sh 72hpf_periderm_rep1 1,2 20 danRer11_2 SRR9211503.fastq.gz ensGene > bin/log/72hpf_periderm_rep1.log 2>&1
RNAseq_SE_exon_step.sh 72hpf_periderm_rep2 1,2 20 danRer11_2 SRR9211504.fastq.gz ensGene > bin/log/72hpf_periderm_rep2.log 2>&1

# 11
RNAseq_PE_exon_step.sh  1cell_rep6 1,2 20 danRer11_2 SRR7942605_1.fastq.gz SRR7942605_2.fastq.gz ensGene > bin/log/1cell_rep6.log 2>&1
RNAseq_PE_exon_step.sh  1cell_rep7 1,2 20 danRer11_2 SRR7942606_1.fastq.gz SRR7942606_2.fastq.gz ensGene > bin/log/1cell_rep7.log 2>&1
RNAseq_PE_exon_step.sh 64cell_rep1 1,2 20 danRer11_2 SRR7942607_1.fastq.gz SRR7942607_2.fastq.gz ensGene > bin/log/64cell_rep1.log 2>&1
RNAseq_PE_exon_step.sh 64cell_rep2 1,2 20 danRer11_2 SRR7942608_1.fastq.gz SRR7942608_2.fastq.gz ensGene > bin/log/64cell_rep2.log 2>&1
RNAseq_PE_exon_step.sh 1kcell_rep3 1,2 20 danRer11_2 SRR7942609_1.fastq.gz SRR7942609_2.fastq.gz ensGene > bin/log/1kcell_rep3.log 2>&1
RNAseq_PE_exon_step.sh 1kcell_rep4 1,2 20 danRer11_2 SRR7942610_1.fastq.gz SRR7942610_2.fastq.gz ensGene > bin/log/1kcell_rep4.log 2>&1
RNAseq_PE_exon_step.sh sphere_rep1 1,2 20 danRer11_2 SRR7942611_1.fastq.gz SRR7942611_2.fastq.gz ensGene > bin/log/sphere_rep1.log 2>&1
RNAseq_PE_exon_step.sh sphere_rep2 1,2 20 danRer11_2 SRR7942612_1.fastq.gz SRR7942612_2.fastq.gz ensGene > bin/log/sphere_rep2.log 2>&1
RNAseq_PE_exon_step.sh shield_rep4 1,2 20 danRer11_2 SRR7942613_1.fastq.gz SRR7942613_2.fastq.gz ensGene > bin/log/shield_rep4.log 2>&1
RNAseq_PE_exon_step.sh shield_rep5 1,2 20 danRer11_2 SRR7942614_1.fastq.gz SRR7942614_2.fastq.gz ensGene > bin/log/shield_rep5.log 2>&1

# 12
RNAseq_PE_exon_step.sh      7hpf_pgc_rep1 1,2 20 danRer11_2 SRR8799026_1.fastq.gz SRR8799026_2.fastq.gz ensGene > bin/log/7hpf_pgc_rep1.log 2>&1
RNAseq_PE_exon_step.sh      7hpf_pgc_rep2 1,2 20 danRer11_2 SRR8799027_1.fastq.gz SRR8799027_2.fastq.gz ensGene > bin/log/7hpf_pgc_rep2.log 2>&1
RNAseq_PE_exon_step.sh     24hpf_pgc_rep1 1,2 20 danRer11_2 SRR8799028_1.fastq.gz SRR8799028_2.fastq.gz ensGene > bin/log/24hpf_pgc_rep1.log 2>&1
RNAseq_PE_exon_step.sh     24hpf_pgc_rep2 1,2 20 danRer11_2 SRR8799029_1.fastq.gz SRR8799029_2.fastq.gz ensGene > bin/log/24hpf_pgc_rep2.log 2>&1
RNAseq_PE_exon_step.sh  7hpf_somatic_rep1 1,2 20 danRer11_2 SRR8799030_1.fastq.gz SRR8799030_2.fastq.gz ensGene > bin/log/7hpf_somatic_rep1.log 2>&1
RNAseq_PE_exon_step.sh  7hpf_somatic_rep2 1,2 20 danRer11_2 SRR8799031_1.fastq.gz SRR8799031_2.fastq.gz ensGene > bin/log/7hpf_somatic_rep2.log 2>&1
RNAseq_PE_exon_step.sh 24hpf_somatic_rep1 1,2 20 danRer11_2 SRR8799032_1.fastq.gz SRR8799032_2.fastq.gz ensGene > bin/log/24hpf_somatic_rep1.log 2>&1
RNAseq_PE_exon_step.sh 24hpf_somatic_rep2 1,2 20 danRer11_2 SRR8799033_1.fastq.gz SRR8799033_2.fastq.gz ensGene > bin/log/24hpf_somatic_rep2.log 2>&1

# 13
RNAseq_PE_exon_step.sh      4hpf_pgc_rep2 1,2 20 danRer11_2 SRR8182162_1.fastq.gz SRR8182162_2.fastq.gz ensGene > bin/log/4hpf_pgc_rep2.log 2>&1
RNAseq_PE_exon_step.sh      4hpf_pgc_rep1 1,2 20 danRer11_2 SRR8182161_1.fastq.gz SRR8182161_2.fastq.gz ensGene > bin/log/4hpf_pgc_rep1.log 2>&1
RNAseq_PE_exon_step.sh      7hpf_pgc_rep3 1,2 20 danRer11_2 SRR8182163_1.fastq.gz SRR8182163_2.fastq.gz ensGene > bin/log/7hpf_pgc_rep3.log 2>&1
RNAseq_PE_exon_step.sh      7hpf_pgc_rep4 1,2 20 danRer11_2 SRR8182164_1.fastq.gz SRR8182164_2.fastq.gz ensGene > bin/log/7hpf_pgc_rep4.log 2>&1
RNAseq_PE_exon_step.sh     24hpf_pgc_rep3 1,2 20 danRer11_2 SRR8182165_1.fastq.gz SRR8182165_2.fastq.gz ensGene > bin/log/24hpf_pgc_rep3.log 2>&1
RNAseq_PE_exon_step.sh     24hpf_pgc_rep4 1,2 20 danRer11_2 SRR8182166_1.fastq.gz SRR8182166_2.fastq.gz ensGene > bin/log/24hpf_pgc_rep4.log 2>&1
RNAseq_PE_exon_step.sh  4hpf_somatic_rep1 1,2 20 danRer11_2 SRR8182169_1.fastq.gz SRR8182169_2.fastq.gz ensGene > bin/log/4hpf_somatic_rep1.log 2>&1
RNAseq_PE_exon_step.sh  4hpf_somatic_rep2 1,2 20 danRer11_2 SRR8182170_1.fastq.gz SRR8182170_2.fastq.gz ensGene > bin/log/4hpf_somatic_rep2.log 2>&1
RNAseq_PE_exon_step.sh  7hpf_somatic_rep3 1,2 20 danRer11_2 SRR8182171_1.fastq.gz SRR8182171_2.fastq.gz ensGene > bin/log/7hpf_somatic_rep3.log 2>&1
RNAseq_PE_exon_step.sh  7hpf_somatic_rep4 1,2 20 danRer11_2 SRR8182172_1.fastq.gz SRR8182172_2.fastq.gz ensGene > bin/log/7hpf_somatic_rep4.log 2>&1
RNAseq_PE_exon_step.sh 24hpf_somatic_rep3 1,2 20 danRer11_2 SRR8182173_1.fastq.gz SRR8182173_2.fastq.gz ensGene > bin/log/24hpf_somatic_rep3.log 2>&1
RNAseq_PE_exon_step.sh 24hpf_somatic_rep4 1,2 20 danRer11_2 SRR8182174_1.fastq.gz SRR8182174_2.fastq.gz ensGene > bin/log/24hpf_somatic_rep4.log 2>&1
RNAseq_PE_exon_step.sh     36hpf_pgc_rep1 1,2 20 danRer11_2 SRR8182167_1.fastq.gz SRR8182167_2.fastq.gz ensGene > bin/log/36hpf_pgc_rep1.log 2>&1
RNAseq_PE_exon_step.sh     36hpf_pgc_rep2 1,2 20 danRer11_2 SRR8182168_1.fastq.gz SRR8182168_2.fastq.gz ensGene > bin/log/36hpf_pgc_rep2.log 2>&1
RNAseq_PE_exon_step.sh 36hpf_somatic_rep1 1,2 20 danRer11_2 SRR8182175_1.fastq.gz SRR8182175_2.fastq.gz ensGene > bin/log/36hpf_somatic_rep1.log 2>&1
RNAseq_PE_exon_step.sh 36hpf_somatic_rep2 1,2 20 danRer11_2 SRR8182176_1.fastq.gz SRR8182176_2.fastq.gz ensGene > bin/log/36hpf_somatic_rep2.log 2>&1

# 14
RNAseq_PE_exon_step.sh 6dpf_rep1 1,2 25 danRer11_2 SRR7875953_1.fastq.gz SRR7875953_2.fastq.gz ensGene > bin/log/6dpf_rep1.log 2>&1


# 15
RNAseq_PE_exon_step.sh 3wpf_rep1 1,2 25 danRer11_2 SRR8816377_1.fastq.gz SRR8816377_2.fastq.gz ensGene > bin/log/3wpf_rep1.log 2>&1
RNAseq_PE_exon_step.sh 3wpf_rep2 1,2 25 danRer11_2 SRR8816378_1.fastq.gz SRR8816378_2.fastq.gz ensGene > bin/log/3wpf_rep2.log 2>&1
RNAseq_PE_exon_step.sh 3wpf_rep3 1,2 25 danRer11_2 SRR8816379_1.fastq.gz SRR8816379_2.fastq.gz ensGene > bin/log/3wpf_rep3.log 2>&1

# 16
RNAseq_SE_exon_step.sh 56hpf_heart_rep1 1,2 25 danRer11_2 SRR8749827.fastq.gz ensGene > bin/log/56hpf_heart_rep1.log 2>&1
RNAseq_SE_exon_step.sh 56hpf_heart_rep2 1,2 25 danRer11_2 SRR8749828.fastq.gz ensGene > bin/log/56hpf_heart_rep2.log 2>&1

# 17
RNAseq_SE_exon_step.sh 5dpf_rep3 1,2 25 danRer11_2 SRR10776672.fastq.gz ensGene > bin/log/5dpf_rep3.log 2>&1
RNAseq_SE_exon_step.sh 5dpf_rep4 1,2 25 danRer11_2 SRR10776673.fastq.gz ensGene > bin/log/5dpf_rep4.log 2>&1
RNAseq_SE_exon_step.sh 5dpf_rep5 1,2 25 danRer11_2 SRR10776674.fastq.gz ensGene > bin/log/5dpf_rep5.log 2>&1

# 18
RNAseq_SE_exon_step.sh   liver_male_rep1 1,2 25 danRer11_2 SRR5119935.fastq.gz ensGene > bin/log/liver_male_rep1.log 2>&1
RNAseq_SE_exon_step.sh   liver_male_rep2 1,2 25 danRer11_2 SRR5119936.fastq.gz ensGene > bin/log/liver_male_rep2.log 2>&1
RNAseq_SE_exon_step.sh   liver_male_rep3 1,2 25 danRer11_2 SRR5119937.fastq.gz ensGene > bin/log/liver_male_rep3.log 2>&1
RNAseq_SE_exon_step.sh liver_female_rep1 1,2 25 danRer11_2 SRR5119938.fastq.gz ensGene > bin/log/liver_female_rep1.log 2>&1
RNAseq_SE_exon_step.sh liver_female_rep2 1,2 25 danRer11_2 SRR5119939.fastq.gz ensGene > bin/log/liver_female_rep2.log 2>&1
RNAseq_SE_exon_step.sh liver_female_rep3 1,2 25 danRer11_2 SRR5119940.fastq.gz ensGene > bin/log/liver_female_rep3.log 2>&1

# 19
RNAseq_PE_exon_step.sh liver_rep1 1,2 25 danRer11_2 SRR9022957_1.fastq.gz SRR9022957_2.fastq.gz ensGene > bin/log/liver_rep1.log 2>&1
RNAseq_PE_exon_step.sh liver_rep2 1,2 25 danRer11_2 SRR9022958_1.fastq.gz SRR9022958_2.fastq.gz ensGene > bin/log/liver_rep2.log 2>&1
RNAseq_PE_exon_step.sh liver_rep3 1,2 25 danRer11_2 SRR9022959_1.fastq.gz SRR9022959_2.fastq.gz ensGene > bin/log/liver_rep3.log 2>&1

# 20
RNAseq_PE_exon_step.sh valve_rep1 1,2 25 danRer11_2 SRR10060610_1.fastq.gz SRR10060610_2.fastq.gz ensGene > bin/log/valve_rep1.log 2>&1
RNAseq_PE_exon_step.sh valve_rep2 1,2 25 danRer11_2 SRR10060611_1.fastq.gz SRR10060611_2.fastq.gz ensGene > bin/log/valve_rep2.log 2>&1
RNAseq_PE_exon_step.sh valve_rep3 1,2 25 danRer11_2 SRR10060612_1.fastq.gz SRR10060612_2.fastq.gz ensGene > bin/log/valve_rep3.log 2>&1

# 21
RNAseq_SE_exon_step.sh retina_muller_rep1 1,2 25 danRer11_2 SRR9189638.fastq.gz ensGene > bin/log/retina_muller_rep1.log 2>&1
RNAseq_SE_exon_step.sh retina_muller_rep2 1,2 25 danRer11_2 SRR9189639.fastq.gz ensGene > bin/log/retina_muller_rep2.log 2>&1
RNAseq_SE_exon_step.sh retina_muller_rep3 1,2 25 danRer11_2 SRR9189640.fastq.gz ensGene > bin/log/retina_muller_rep3.log 2>&1

# 22
RNAseq_PE_exon_step.sh kidney_rep1 1,2 25 danRer11_2 SRR7659031_1.fastq.gz SRR7659031_2.fastq.gz ensGene > bin/log/kidney_rep1.log 2>&1
RNAseq_PE_exon_step.sh kidney_rep2 1,2 25 danRer11_2 SRR7659032_1.fastq.gz SRR7659032_2.fastq.gz ensGene > bin/log/kidney_rep2.log 2>&1
RNAseq_PE_exon_step.sh kidney_rep3 1,2 25 danRer11_2 SRR7659033_1.fastq.gz SRR7659033_2.fastq.gz ensGene > bin/log/kidney_rep3.log 2>&1
RNAseq_PE_exon_step.sh kidney_rep4 1,2 25 danRer11_2 SRR7659034_1.fastq.gz SRR7659034_2.fastq.gz ensGene > bin/log/kidney_rep4.log 2>&1

# 23
RNAseq_PE_exon_step.sh kidney_HSC_gata2a_p_runx1_p 1,2 25 danRer11_2 SRR9320538_1.fastq.gz SRR9320538_2.fastq.gz ensGene > bin/log/kidney_HSC_gata2a_p_runx1_p.log 2>&1
RNAseq_PE_exon_step.sh kidney_HSC_gata2a_n_runx1_p 1,2 25 danRer11_2 SRR9320539_1.fastq.gz SRR9320539_2.fastq.gz ensGene > bin/log/kidney_HSC_gata2a_n_runx1_p.log 2>&1
RNAseq_PE_exon_step.sh kidney_HSC_gata2a_p_runx1_n 1,2 25 danRer11_2 SRR9320540_1.fastq.gz SRR9320540_2.fastq.gz ensGene > bin/log/kidney_HSC_gata2a_p_runx1_n.log 2>&1

# 24
RNAseq_PE_exon_step.sh          4dpf_vascular_muscle_acta2_n_rep1 1,2 25 danRer11_2 SRR7813741_1.fastq.gz SRR7813741_2.fastq.gz ensGene > bin/log/4dpf_vascular_muscle_acta2_n_rep1.log 2>&1
RNAseq_PE_exon_step.sh          4dpf_vascular_muscle_acta2_n_rep2 1,2 25 danRer11_2 SRR7813742_1.fastq.gz SRR7813742_2.fastq.gz ensGene > bin/log/4dpf_vascular_muscle_acta2_n_rep2.log 2>&1
RNAseq_PE_exon_step.sh          4dpf_vascular_muscle_acta2_n_rep3 1,2 25 danRer11_2 SRR7813743_1.fastq.gz SRR7813743_2.fastq.gz ensGene > bin/log/4dpf_vascular_muscle_acta2_n_rep3.log 2>&1
RNAseq_PE_exon_step.sh          4dpf_vascular_muscle_acta2_p_rep1 1,2 25 danRer11_2 SRR7813744_1.fastq.gz SRR7813744_2.fastq.gz ensGene > bin/log/4dpf_vascular_muscle_acta2_p_rep1.log 2>&1
RNAseq_PE_exon_step.sh          4dpf_vascular_muscle_acta2_p_rep2 1,2 25 danRer11_2 SRR7813745_1.fastq.gz SRR7813745_2.fastq.gz ensGene > bin/log/4dpf_vascular_muscle_acta2_p_rep2.log 2>&1
RNAseq_PE_exon_step.sh          4dpf_vascular_muscle_acta2_p_rep3 1,2 25 danRer11_2 SRR7813746_1.fastq.gz SRR7813746_2.fastq.gz ensGene > bin/log/4dpf_vascular_muscle_acta2_p_rep3.log 2>&1
RNAseq_PE_exon_step.sh 4dpf_vascular_muscle_acta2_n_fosc1b_n_rep1 1,2 25 danRer11_2 SRR7813747_1.fastq.gz SRR7813747_2.fastq.gz ensGene > bin/log/4dpf_vascular_muscle_acta2_n_fosc1b_n_rep1.log 2>&1
RNAseq_PE_exon_step.sh 4dpf_vascular_muscle_acta2_n_fosc1b_n_rep2 1,2 25 danRer11_2 SRR7813748_1.fastq.gz SRR7813748_2.fastq.gz ensGene > bin/log/4dpf_vascular_muscle_acta2_n_fosc1b_n_rep2.log 2>&1
RNAseq_PE_exon_step.sh 4dpf_vascular_muscle_acta2_n_fosc1b_n_rep3 1,2 25 danRer11_2 SRR7813749_1.fastq.gz SRR7813749_2.fastq.gz ensGene > bin/log/4dpf_vascular_muscle_acta2_n_fosc1b_n_rep3.log 2>&1
RNAseq_PE_exon_step.sh 4dpf_vascular_muscle_acta2_p_fosc1b_p_rep1 1,2 25 danRer11_2 SRR7813750_1.fastq.gz SRR7813750_2.fastq.gz ensGene > bin/log/4dpf_vascular_muscle_acta2_p_fosc1b_p_rep1.log 2>&1
RNAseq_PE_exon_step.sh 4dpf_vascular_muscle_acta2_p_fosc1b_p_rep2 1,2 25 danRer11_2 SRR7813751_1.fastq.gz SRR7813751_2.fastq.gz ensGene > bin/log/4dpf_vascular_muscle_acta2_p_fosc1b_p_rep2.log 2>&1
RNAseq_PE_exon_step.sh           5dpf_vascular_muscle_kdrl_n_rep1 1,2 25 danRer11_2 SRR7813752_1.fastq.gz SRR7813752_2.fastq.gz ensGene > bin/log/5dpf_vascular_muscle_kdrl_n_rep1.log 2>&1
RNAseq_PE_exon_step.sh           5dpf_vascular_muscle_kdrl_n_rep2 1,2 25 danRer11_2 SRR7813753_1.fastq.gz SRR7813753_2.fastq.gz ensGene > bin/log/5dpf_vascular_muscle_kdrl_n_rep2.log 2>&1
RNAseq_PE_exon_step.sh           5dpf_vascular_muscle_kdrl_n_rep3 1,2 25 danRer11_2 SRR7813754_1.fastq.gz SRR7813754_2.fastq.gz ensGene > bin/log/5dpf_vascular_muscle_kdrl_n_rep3.log 2>&1
RNAseq_PE_exon_step.sh           5dpf_vascular_muscle_kdrl_p_rep1 1,2 25 danRer11_2 SRR7813755_1.fastq.gz SRR7813755_2.fastq.gz ensGene > bin/log/5dpf_vascular_muscle_kdrl_p_rep1.log 2>&1
RNAseq_PE_exon_step.sh           5dpf_vascular_muscle_kdrl_p_rep2 1,2 25 danRer11_2 SRR7813756_1.fastq.gz SRR7813756_2.fastq.gz ensGene > bin/log/5dpf_vascular_muscle_kdrl_p_rep2.log 2>&1
RNAseq_PE_exon_step.sh           5dpf_vascular_muscle_kdrl_p_rep3 1,2 25 danRer11_2 SRR7813757_1.fastq.gz SRR7813757_2.fastq.gz ensGene > bin/log/5dpf_vascular_muscle_kdrl_p_rep3.log 2>&1

# 25
RNAseq_PE_exon_step.sh ventricle_rep1 1,2 25 danRer11_2 SRR9336405_1.fastq.gz SRR9336405_2.fastq.gz ensGene > bin/log/ventricle_rep1.log 2>&1
RNAseq_PE_exon_step.sh ventricle_rep2 1,2 25 danRer11_2 SRR9336406_1.fastq.gz SRR9336406_2.fastq.gz ensGene > bin/log/ventricle_rep2.log 2>&1
RNAseq_PE_exon_step.sh ventricle_rep3 1,2 25 danRer11_2 SRR9336407_1.fastq.gz SRR9336407_2.fastq.gz ensGene > bin/log/ventricle_rep3.log 2>&1
RNAseq_PE_exon_step.sh ventricle_rep4 1,2 25 danRer11_2 SRR9336408_1.fastq.gz SRR9336408_2.fastq.gz ensGene > bin/log/ventricle_rep4.log 2>&1
RNAseq_PE_exon_step.sh ventricle_rep5 1,2 25 danRer11_2 SRR9336409_1.fastq.gz SRR9336409_2.fastq.gz ensGene > bin/log/ventricle_rep5.log 2>&1

# 26
RNAseq_SE_exon_step.sh 6dpf_IEC_rep1 1,2 25 danRer11_2 SRR8435104.fastq.gz ensGene > bin/log/6dpf_IEC_rep1.log 2>&1
RNAseq_SE_exon_step.sh 6dpf_IEC_rep2 1,2 25 danRer11_2 SRR8435105.fastq.gz ensGene > bin/log/6dpf_IEC_rep2.log 2>&1
RNAseq_SE_exon_step.sh 6dpf_IEC_rep3 1,2 25 danRer11_2 SRR8435106.fastq.gz ensGene > bin/log/6dpf_IEC_rep3.log 2>&1
RNAseq_SE_exon_step.sh 6dpf_LRE_rep1 1,2 25 danRer11_2 SRR8435107.fastq.gz ensGene > bin/log/6dpf_LRE_rep1.log 2>&1
RNAseq_SE_exon_step.sh 6dpf_LRE_rep2 1,2 25 danRer11_2 SRR8435108.fastq.gz ensGene > bin/log/6dpf_LRE_rep2.log 2>&1
RNAseq_SE_exon_step.sh 6dpf_LRE_rep3 1,2 25 danRer11_2 SRR8435109.fastq.gz ensGene > bin/log/6dpf_LRE_rep3.log 2>&1

# 27
RNAseq_PE_exon_step.sh 5mpf_ovary_rep1 1,2 25 danRer11_2 SRR9693179_1.fastq.gz SRR9693179_2.fastq.gz ensGene > bin/log/5mpf_ovary_rep1.log 2>&1

# 28
RNAseq_PE_exon_step.sh 3mpf_heart_rep1 1,2 25 danRer11_2 SRR9966394_1.fastq.gz,SRR9966395_1.fastq.gz,SRR9966396_1.fastq.gz SRR9966394_2.fastq.gz,SRR9966395_2.fastq.gz,SRR9966396_2.fastq.gz ensGene > bin/log/3mpf_heart_rep1.log 2>&1

# 29
RNAseq_PE_exon_step.sh 2mpf_liver_rep1 1,2 25 danRer11_2 SRR9707990_1.fastq.gz SRR9707990_2.fastq.gz ensGene > bin/log/2mpf_liver_rep1.log 2>&1
RNAseq_PE_exon_step.sh 2mpf_liver_rep2 1,2 25 danRer11_2 SRR9707991_1.fastq.gz SRR9707991_2.fastq.gz ensGene > bin/log/2mpf_liver_rep2.log 2>&1

# 30
RNAseq_SE_exon_step.sh testis_rep1 1,2 25 danRer11_2 SRR7468674.fastq.gz,SRR7468675.fastq.gz ensGene > bin/log/testis_rep1.log 2>&1
RNAseq_SE_exon_step.sh testis_rep2 1,2 25 danRer11_2 SRR7468676.fastq.gz,SRR7468677.fastq.gz ensGene > bin/log/testis_rep2.log 2>&1
RNAseq_SE_exon_step.sh testis_rep3 1,2 25 danRer11_2 SRR7468678.fastq.gz,SRR7468679.fastq.gz ensGene > bin/log/testis_rep3.log 2>&1
RNAseq_SE_exon_step.sh testis_rep4 1,2 25 danRer11_2 SRR7468680.fastq.gz,SRR7468681.fastq.gz ensGene > bin/log/testis_rep4.log 2>&1
RNAseq_SE_exon_step.sh testis_rep5 1,2 25 danRer11_2 SRR7468682.fastq.gz,SRR7468683.fastq.gz ensGene > bin/log/testis_rep5.log 2>&1

# 31
RNAseq_SE_exon_step.sh   4dpf_podocytes_rep1 1,2 25 danRer11_2 SRR7633477.fastq.gz ensGene > bin/log/4dpf_podocytes_rep1.log 2>&1
RNAseq_SE_exon_step.sh   4dpf_podocytes_rep2 1,2 25 danRer11_2 SRR7633478.fastq.gz ensGene > bin/log/4dpf_podocytes_rep2.log 2>&1
RNAseq_SE_exon_step.sh   4dpf_podocytes_rep3 1,2 25 danRer11_2 SRR7633479.fastq.gz ensGene > bin/log/4dpf_podocytes_rep3.log 2>&1
RNAseq_SE_exon_step.sh 4dpf_endothelial_rep1 1,2 25 danRer11_2 SRR7633486.fastq.gz ensGene > bin/log/4dpf_endothelial_rep1.log 2>&1
RNAseq_SE_exon_step.sh 4dpf_endothelial_rep2 1,2 25 danRer11_2 SRR7633487.fastq.gz ensGene > bin/log/4dpf_endothelial_rep2.log 2>&1
RNAseq_SE_exon_step.sh 4dpf_endothelial_rep3 1,2 25 danRer11_2 SRR7633488.fastq.gz ensGene > bin/log/4dpf_endothelial_rep3.log 2>&1

# 32
RNAseq_PE_exon_step.sh 3dpf_kidney_rep1 1,2 25 danRer11_2 SRR5320500_1.fastq.gz SRR5320500_2.fastq.gz ensGene > bin/log/3dpf_kidney_rep1.log 2>&1
RNAseq_PE_exon_step.sh 3dpf_kidney_rep2 1,2 25 danRer11_2 SRR5320501_1.fastq.gz SRR5320501_2.fastq.gz ensGene > bin/log/3dpf_kidney_rep2.log 2>&1
RNAseq_PE_exon_step.sh 3dpf_kidney_rep3 1,2 25 danRer11_2 SRR5320502_1.fastq.gz SRR5320502_2.fastq.gz ensGene > bin/log/3dpf_kidney_rep3.log 2>&1

# 33
RNAseq_PE_exon_step.sh          epidermis_cLCs_rep1 1,2 25 danRer11_2 SRR8591736_1.fastq.gz SRR8591736_2.fastq.gz ensGene > bin/log/epidermis_cLCs_rep1.log 2>&1
RNAseq_PE_exon_step.sh          epidermis_cLCs_rep2 1,2 25 danRer11_2 SRR8591737_1.fastq.gz SRR8591737_2.fastq.gz ensGene > bin/log/epidermis_cLCs_rep2.log 2>&1
RNAseq_PE_exon_step.sh          epidermis_cLCs_rep3 1,2 25 danRer11_2 SRR8591738_1.fastq.gz SRR8591738_2.fastq.gz ensGene > bin/log/epidermis_cLCs_rep3.log 2>&1
RNAseq_PE_exon_step.sh          epidermis_cLCs_rep4 1,2 25 danRer11_2 SRR8591739_1.fastq.gz SRR8591739_2.fastq.gz ensGene > bin/log/epidermis_cLCs_rep4.log 2>&1
RNAseq_PE_exon_step.sh epidermis_Keratinocytes_rep1 1,2 25 danRer11_2 SRR8591740_1.fastq.gz SRR8591740_2.fastq.gz ensGene > bin/log/epidermis_Keratinocytes_rep1.log 2>&1
RNAseq_PE_exon_step.sh epidermis_Keratinocytes_rep2 1,2 25 danRer11_2 SRR8591741_1.fastq.gz SRR8591741_2.fastq.gz ensGene > bin/log/epidermis_Keratinocytes_rep2.log 2>&1
RNAseq_PE_exon_step.sh epidermis_Keratinocytes_rep3 1,2 25 danRer11_2 SRR8591742_1.fastq.gz SRR8591742_2.fastq.gz ensGene > bin/log/epidermis_Keratinocytes_rep3.log 2>&1
RNAseq_PE_exon_step.sh          epidermis_MLCs_rep1 1,2 25 danRer11_2 SRR8591743_1.fastq.gz SRR8591743_2.fastq.gz ensGene > bin/log/epidermis_MLCs_rep1.log 2>&1
RNAseq_PE_exon_step.sh          epidermis_MLCs_rep2 1,2 25 danRer11_2 SRR8591744_1.fastq.gz SRR8591744_2.fastq.gz ensGene > bin/log/epidermis_MLCs_rep2.log 2>&1
RNAseq_PE_exon_step.sh          epidermis_MLCs_rep3 1,2 25 danRer11_2 SRR8591745_1.fastq.gz SRR8591745_2.fastq.gz ensGene > bin/log/epidermis_MLCs_rep3.log 2>&1
RNAseq_PE_exon_step.sh          epidermis_MLCs_rep4 1,2 25 danRer11_2 SRR8591746_1.fastq.gz SRR8591746_2.fastq.gz ensGene > bin/log/epidermis_MLCs_rep4.log 2>&1
RNAseq_PE_exon_step.sh   epidermis_Neutrophils_rep1 1,2 25 danRer11_2 SRR8591747_1.fastq.gz SRR8591747_2.fastq.gz ensGene > bin/log/epidermis_Neutrophils_rep1.log 2>&1
RNAseq_PE_exon_step.sh   epidermis_Neutrophils_rep2 1,2 25 danRer11_2 SRR8591748_1.fastq.gz SRR8591748_2.fastq.gz ensGene > bin/log/epidermis_Neutrophils_rep2.log 2>&1
RNAseq_PE_exon_step.sh   epidermis_Neutrophils_rep3 1,2 25 danRer11_2 SRR8591749_1.fastq.gz SRR8591749_2.fastq.gz ensGene > bin/log/epidermis_Neutrophils_rep3.log 2>&1
RNAseq_PE_exon_step.sh        epidermis_T_cell_rep1 1,2 25 danRer11_2 SRR8591750_1.fastq.gz SRR8591750_2.fastq.gz ensGene > bin/log/epidermis_T_cell_rep1.log 2>&1
RNAseq_PE_exon_step.sh        epidermis_T_cell_rep2 1,2 25 danRer11_2 SRR8591751_1.fastq.gz SRR8591751_2.fastq.gz ensGene > bin/log/epidermis_T_cell_rep2.log 2>&1
RNAseq_PE_exon_step.sh        epidermis_T_cell_rep3 1,2 25 danRer11_2 SRR8591752_1.fastq.gz SRR8591752_2.fastq.gz ensGene > bin/log/epidermis_T_cell_rep3.log 2>&1

# 34
RNAseq_SE_exon_step.sh ovary_rep2 1,2 25 danRer11_2 SRR7341815.fastq.gz ensGene > bin/log/ovary_rep2.log 2>&1

# 35
RNAseq_PE_exon_step.sh muscle_rep1 1,2 25 danRer11_2 SRR6798775_1.fastq.gz SRR6798775_2.fastq.gz ensGene > bin/log/muscle_rep1.log 2>&1
RNAseq_PE_exon_step.sh muscle_rep2 1,2 25 danRer11_2 SRR6798776_1.fastq.gz SRR6798776_2.fastq.gz ensGene > bin/log/muscle_rep2.log 2>&1
RNAseq_PE_exon_step.sh muscle_rep3 1,2 25 danRer11_2 SRR6798777_1.fastq.gz SRR6798777_2.fastq.gz ensGene > bin/log/muscle_rep3.log 2>&1

# 36
RNAseq_PE_exon_step.sh 5dpf_beta_rep1 1,2 25 danRer11_2 SRR8456906_1.fastq.gz SRR8456906_2.fastq.gz ensGene > bin/log/5dpf_beta_rep1.log 2>&1
RNAseq_PE_exon_step.sh 5dpf_beta_rep2 1,2 25 danRer11_2 SRR8456907_1.fastq.gz SRR8456907_2.fastq.gz ensGene > bin/log/5dpf_beta_rep2.log 2>&1


