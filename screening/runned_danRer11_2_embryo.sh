#!/bin/bash

cd ~/maternal_loading/2.public_data

function ena_meta_download {
    project_accession=${1}
    wget -O ${project_accession}.tsv "https://www.ebi.ac.uk/ena/portal/api/filereport?accession=${project_accession}&result=read_run&fields=sample_accession,experiment_accession,run_accession,scientific_name,library_layout,fastq_md5,fastq_ftp&format=tsv&download=true"
}



# ----- 01 PRJNA189430 PRJNA154389 early embryonic development paired-end -----

# cd 0_raw_data
# for i in SRR1049814 SRR372787 SRR372788 SRR372789 SRR372790 SRR372791 SRR372792 SRR372793 SRR372794 SRR372795 SRR372796 SRR372797 SRR372798 SRR372799 SRR372800 SRR372801 SRR372802 SRR372803;do
#     enaDataGet -f fastq $i -d . > enaDataGet.log.${i} 2>&1
# done
# wait;
# cat enaDataGet.log.* >> enaDataGet.log
# rm enaDataGet.log.*
# ln -s SRR*/SRR*.gz .

# cd ~/maternal_loading/2.public_data
# bash ~/bin/RNAseq_PE.sh 256cell_1 10 danRer11_2 SRR1049814_1.fastq.gz SRR1049814_2.fastq.gz &
# bash ~/bin/RNAseq_PE.sh  24cell_1 10 danRer11_2  SRR372787_1.fastq.gz  SRR372787_2.fastq.gz &
# bash ~/bin/RNAseq_PE.sh  24cell_2 10 danRer11_2  SRR372788_1.fastq.gz  SRR372788_2.fastq.gz &
# bash ~/bin/RNAseq_PE.sh  1kcell_1 10 danRer11_2  SRR372789_1.fastq.gz  SRR372789_2.fastq.gz &
# bash ~/bin/RNAseq_PE.sh  1kcell_2 10 danRer11_2  SRR372790_1.fastq.gz  SRR372790_2.fastq.gz &
# bash ~/bin/RNAseq_PE.sh    dome_1 10 danRer11_2  SRR372791_1.fastq.gz  SRR372791_2.fastq.gz &
# bash ~/bin/RNAseq_PE.sh    dome_2 10 danRer11_2  SRR372792_1.fastq.gz  SRR372792_2.fastq.gz &
# bash ~/bin/RNAseq_PE.sh  shield_1 10 danRer11_2  SRR372793_1.fastq.gz  SRR372793_2.fastq.gz &
# bash ~/bin/RNAseq_PE.sh  shield_2 10 danRer11_2  SRR372794_1.fastq.gz  SRR372794_2.fastq.gz &
# bash ~/bin/RNAseq_PE.sh  shield_3 10 danRer11_2  SRR372795_1.fastq.gz  SRR372795_2.fastq.gz &
# bash ~/bin/RNAseq_PE.sh     bud_1 10 danRer11_2  SRR372796_1.fastq.gz  SRR372796_2.fastq.gz &
# bash ~/bin/RNAseq_PE.sh     bud_2 10 danRer11_2  SRR372797_1.fastq.gz  SRR372797_2.fastq.gz &
# bash ~/bin/RNAseq_PE.sh   28hpf_1 10 danRer11_2  SRR372798_1.fastq.gz  SRR372798_2.fastq.gz &
# bash ~/bin/RNAseq_PE.sh   28hpf_2 10 danRer11_2  SRR372799_1.fastq.gz  SRR372799_2.fastq.gz &


# ----- 02 Apr-24-2021 expression GSE114954 Mol Cell Wei Xie -----

# project_accession=PRJNA473799
# cd 0_raw_data
# ena_meta_download ${project_accession}
# mv ${project_accession}.tsv ${project_accession}.tsv.tmp
# cat <(head -1 ${project_accession}.tsv.tmp) <(egrep "SRR7235498|SRR7235499|SRR7235517|SRR7235518|SRR7235544|SRR7235545|SRR7762354|SRR7762355|SRR7762356|SRR7762357|SRR7235549|SRR7235550" ${project_accession}.tsv.tmp) > ${project_accession}.tsv
# rm ${project_accession}.tsv.tmp
# gen_download_from_ebi.py ${project_accession}.tsv ${project_accession}.sh
# bash ${project_accession}.sh
# md5_of_ENAfastq_generate.py ${project_accession}.tsv ${project_accession}.md5
# md5sum -c ${project_accession}.md5
# cd ..

# bash ~/bin/RNAseq_PE.sh oocyte_rep2   8 danRer11_2 SRR7235498_1.fastq.gz SRR7235498_2.fastq.gz &
# bash ~/bin/RNAseq_PE.sh oocyte_rep1   8 danRer11_2 SRR7235499_1.fastq.gz SRR7235499_2.fastq.gz &
# bash ~/bin/RNAseq_PE.sh dome_rep2     8 danRer11_2 SRR7235517_1.fastq.gz SRR7235517_2.fastq.gz &
# bash ~/bin/RNAseq_PE.sh dome_rep1     8 danRer11_2 SRR7235518_1.fastq.gz SRR7235518_2.fastq.gz &
# bash ~/bin/RNAseq_PE.sh 4cell_rep2    8 danRer11_2 SRR7235544_1.fastq.gz SRR7235544_2.fastq.gz &
# bash ~/bin/RNAseq_PE.sh 4cell_rep1    8 danRer11_2 SRR7235545_1.fastq.gz SRR7235545_2.fastq.gz &
# bash ~/bin/RNAseq_PE.sh 256cell_rep2  8 danRer11_2 SRR7235550_1.fastq.gz SRR7235550_2.fastq.gz &
# bash ~/bin/RNAseq_PE.sh 256cell_rep1  8 danRer11_2 SRR7235549_1.fastq.gz SRR7235549_2.fastq.gz &
# bash ~/bin/RNAseq_SE.sh oocyte_stage1 8 danRer11_2 SRR7762354.fastq.gz &
# bash ~/bin/RNAseq_SE.sh oocyte_stage2 8 danRer11_2 SRR7762355.fastq.gz &
# bash ~/bin/RNAseq_SE.sh oocyte_stage3 8 danRer11_2 SRR7762356.fastq.gz &
# bash ~/bin/RNAseq_SE.sh oocyte_stage4 8 danRer11_2 SRR7762357.fastq.gz &



# ----- 03 expression GSE56977 GSM1531258 Oblong 3.5hpf Schier AF -----

# project_accession=PRJNA245102
# cd 0_raw_data
# ena_meta_download ${project_accession}
# mv ${project_accession}.tsv ${project_accession}.tsv.tmp
# cat <(head -1 ${project_accession}.tsv.tmp) <(egrep "SRR1621206" ${project_accession}.tsv.tmp) > ${project_accession}.tsv
# # rm ${project_accession}.tsv.tmp
# gen_download_from_ebi.py ${project_accession}.tsv ${project_accession}.sh
# bash ${project_accession}.sh
# md5_of_ENAfastq_generate.py ${project_accession}.tsv ${project_accession}.md5
# md5sum -c ${project_accession}.md5
# cd ..

# bash ~/bin/RNAseq_PE.sh oblong_rep1 8 danRer11_2 SRR1621206_1.fastq.gz SRR1621206_2.fastq.gz &



# ----- 04 elife embryonic -----

# project_accession=PRJEB12982
# cd 0_raw_data
# ena_meta_download ${project_accession}
# # rm ${project_accession}.tsv.tmp
# gen_download_from_ebi.py ${project_accession}.tsv ${project_accession}.sh
# bash ${project_accession}.sh
# md5_of_ENAfastq_generate.py ${project_accession}.tsv ${project_accession}.md5
# md5sum -c ${project_accession}.md5
# cd ..

# bash ~/bin/RNAseq_PE.sh elife_30860_1cell_1 8 danRer11_2 ERR1442646_1.fastq.gz,ERR1442736_1.fastq.gz,ERR1442826_1.fastq.gz,ERR1442916_1.fastq.gz ERR1442646_2.fastq.gz,ERR1442736_2.fastq.gz,ERR1442826_2.fastq.gz,ERR1442916_2.fastq.gz &
# bash ~/bin/RNAseq_PE.sh elife_30860_1cell_2 8 danRer11_2 ERR1442647_1.fastq.gz,ERR1442737_1.fastq.gz,ERR1442827_1.fastq.gz,ERR1442917_1.fastq.gz ERR1442647_2.fastq.gz,ERR1442737_2.fastq.gz,ERR1442827_2.fastq.gz,ERR1442917_2.fastq.gz &
# bash ~/bin/RNAseq_PE.sh elife_30860_1cell_3 8 danRer11_2 ERR1442648_1.fastq.gz,ERR1442738_1.fastq.gz,ERR1442828_1.fastq.gz,ERR1442918_1.fastq.gz ERR1442648_2.fastq.gz,ERR1442738_2.fastq.gz,ERR1442828_2.fastq.gz,ERR1442918_2.fastq.gz &
# bash ~/bin/RNAseq_PE.sh elife_30860_1cell_4 8 danRer11_2 ERR1442649_1.fastq.gz,ERR1442739_1.fastq.gz,ERR1442829_1.fastq.gz,ERR1442919_1.fastq.gz ERR1442649_2.fastq.gz,ERR1442739_2.fastq.gz,ERR1442829_2.fastq.gz,ERR1442919_2.fastq.gz &
# bash ~/bin/RNAseq_PE.sh elife_30860_1cell_5 8 danRer11_2 ERR1442650_1.fastq.gz,ERR1442740_1.fastq.gz,ERR1442830_1.fastq.gz,ERR1442920_1.fastq.gz ERR1442650_2.fastq.gz,ERR1442740_2.fastq.gz,ERR1442830_2.fastq.gz,ERR1442920_2.fastq.gz &
# bash ~/bin/RNAseq_PE.sh elife_30860_2cell_1 8 danRer11_2 ERR1442626_1.fastq.gz,ERR1442716_1.fastq.gz,ERR1442806_1.fastq.gz,ERR1442896_1.fastq.gz ERR1442626_2.fastq.gz,ERR1442716_2.fastq.gz,ERR1442806_2.fastq.gz,ERR1442896_2.fastq.gz &
# bash ~/bin/RNAseq_PE.sh elife_30860_2cell_2 8 danRer11_2 ERR1442627_1.fastq.gz,ERR1442717_1.fastq.gz,ERR1442807_1.fastq.gz,ERR1442897_1.fastq.gz ERR1442627_2.fastq.gz,ERR1442717_2.fastq.gz,ERR1442807_2.fastq.gz,ERR1442897_2.fastq.gz &
# bash ~/bin/RNAseq_PE.sh elife_30860_2cell_3 8 danRer11_2 ERR1442628_1.fastq.gz,ERR1442718_1.fastq.gz,ERR1442808_1.fastq.gz,ERR1442898_1.fastq.gz ERR1442628_2.fastq.gz,ERR1442718_2.fastq.gz,ERR1442808_2.fastq.gz,ERR1442898_2.fastq.gz &
# bash ~/bin/RNAseq_PE.sh elife_30860_2cell_4 8 danRer11_2 ERR1442629_1.fastq.gz,ERR1442719_1.fastq.gz,ERR1442809_1.fastq.gz,ERR1442899_1.fastq.gz ERR1442629_2.fastq.gz,ERR1442719_2.fastq.gz,ERR1442809_2.fastq.gz,ERR1442899_2.fastq.gz &
# bash ~/bin/RNAseq_PE.sh elife_30860_2cell_5 8 danRer11_2 ERR1442630_1.fastq.gz,ERR1442720_1.fastq.gz,ERR1442810_1.fastq.gz,ERR1442900_1.fastq.gz ERR1442630_2.fastq.gz,ERR1442720_2.fastq.gz,ERR1442810_2.fastq.gz,ERR1442900_2.fastq.gz &
# bash ~/bin/RNAseq_PE.sh elife_30860_128cell_1 8 danRer11_2 ERR1442631_1.fastq.gz,ERR1442721_1.fastq.gz,ERR1442811_1.fastq.gz,ERR1442901_1.fastq.gz ERR1442631_2.fastq.gz,ERR1442721_2.fastq.gz,ERR1442811_2.fastq.gz,ERR1442901_2.fastq.gz &
# bash ~/bin/RNAseq_PE.sh elife_30860_128cell_2 8 danRer11_2 ERR1442632_1.fastq.gz,ERR1442722_1.fastq.gz,ERR1442812_1.fastq.gz,ERR1442902_1.fastq.gz ERR1442632_2.fastq.gz,ERR1442722_2.fastq.gz,ERR1442812_2.fastq.gz,ERR1442902_2.fastq.gz &
# bash ~/bin/RNAseq_PE.sh elife_30860_128cell_3 8 danRer11_2 ERR1442633_1.fastq.gz,ERR1442723_1.fastq.gz,ERR1442813_1.fastq.gz,ERR1442903_1.fastq.gz ERR1442633_2.fastq.gz,ERR1442723_2.fastq.gz,ERR1442813_2.fastq.gz,ERR1442903_2.fastq.gz &
# bash ~/bin/RNAseq_PE.sh elife_30860_128cell_4 8 danRer11_2 ERR1442634_1.fastq.gz,ERR1442724_1.fastq.gz,ERR1442814_1.fastq.gz,ERR1442904_1.fastq.gz ERR1442634_2.fastq.gz,ERR1442724_2.fastq.gz,ERR1442814_2.fastq.gz,ERR1442904_2.fastq.gz &
# bash ~/bin/RNAseq_PE.sh elife_30860_128cell_5 8 danRer11_2 ERR1442635_1.fastq.gz,ERR1442725_1.fastq.gz,ERR1442815_1.fastq.gz,ERR1442905_1.fastq.gz ERR1442635_2.fastq.gz,ERR1442725_2.fastq.gz,ERR1442815_2.fastq.gz,ERR1442905_2.fastq.gz &
# bash ~/bin/RNAseq_PE.sh elife_30860_1kcell_1  8 danRer11_2 ERR1442641_1.fastq.gz,ERR1442731_1.fastq.gz,ERR1442821_1.fastq.gz,ERR1442911_1.fastq.gz ERR1442641_2.fastq.gz,ERR1442731_2.fastq.gz,ERR1442821_2.fastq.gz,ERR1442911_2.fastq.gz &
# bash ~/bin/RNAseq_PE.sh elife_30860_1kcell_2  8 danRer11_2 ERR1442642_1.fastq.gz,ERR1442732_1.fastq.gz,ERR1442822_1.fastq.gz,ERR1442912_1.fastq.gz ERR1442642_2.fastq.gz,ERR1442732_2.fastq.gz,ERR1442822_2.fastq.gz,ERR1442912_2.fastq.gz &
# bash ~/bin/RNAseq_PE.sh elife_30860_1kcell_3  8 danRer11_2 ERR1442643_1.fastq.gz,ERR1442733_1.fastq.gz,ERR1442823_1.fastq.gz,ERR1442913_1.fastq.gz ERR1442643_2.fastq.gz,ERR1442733_2.fastq.gz,ERR1442823_2.fastq.gz,ERR1442913_2.fastq.gz &
# bash ~/bin/RNAseq_PE.sh elife_30860_1kcell_4  8 danRer11_2 ERR1442644_1.fastq.gz,ERR1442734_1.fastq.gz,ERR1442824_1.fastq.gz,ERR1442914_1.fastq.gz ERR1442644_2.fastq.gz,ERR1442734_2.fastq.gz,ERR1442824_2.fastq.gz,ERR1442914_2.fastq.gz &
# bash ~/bin/RNAseq_PE.sh elife_30860_1kcell_5  8 danRer11_2 ERR1442645_1.fastq.gz,ERR1442735_1.fastq.gz,ERR1442825_1.fastq.gz,ERR1442915_1.fastq.gz ERR1442645_2.fastq.gz,ERR1442735_2.fastq.gz,ERR1442825_2.fastq.gz,ERR1442915_2.fastq.gz &
# bash ~/bin/RNAseq_PE.sh elife_30860_dome_1  8 danRer11_2 ERR1442621_1.fastq.gz,ERR1442711_1.fastq.gz,ERR1442801_1.fastq.gz,ERR1442891_1.fastq.gz ERR1442621_2.fastq.gz,ERR1442711_2.fastq.gz,ERR1442801_2.fastq.gz,ERR1442891_2.fastq.gz &
# bash ~/bin/RNAseq_PE.sh elife_30860_dome_2  8 danRer11_2 ERR1442622_1.fastq.gz,ERR1442712_1.fastq.gz,ERR1442802_1.fastq.gz,ERR1442892_1.fastq.gz ERR1442622_2.fastq.gz,ERR1442712_2.fastq.gz,ERR1442802_2.fastq.gz,ERR1442892_2.fastq.gz &
# bash ~/bin/RNAseq_PE.sh elife_30860_dome_3  8 danRer11_2 ERR1442623_1.fastq.gz,ERR1442713_1.fastq.gz,ERR1442803_1.fastq.gz,ERR1442893_1.fastq.gz ERR1442623_2.fastq.gz,ERR1442713_2.fastq.gz,ERR1442803_2.fastq.gz,ERR1442893_2.fastq.gz &
# bash ~/bin/RNAseq_PE.sh elife_30860_dome_4  8 danRer11_2 ERR1442624_1.fastq.gz,ERR1442714_1.fastq.gz,ERR1442804_1.fastq.gz,ERR1442894_1.fastq.gz ERR1442624_2.fastq.gz,ERR1442714_2.fastq.gz,ERR1442804_2.fastq.gz,ERR1442894_2.fastq.gz &
# bash ~/bin/RNAseq_PE.sh elife_30860_dome_5  8 danRer11_2 ERR1442625_1.fastq.gz,ERR1442715_1.fastq.gz,ERR1442805_1.fastq.gz,ERR1442895_1.fastq.gz ERR1442625_2.fastq.gz,ERR1442715_2.fastq.gz,ERR1442805_2.fastq.gz,ERR1442895_2.fastq.gz &
# bash ~/bin/RNAseq_PE.sh elife_30860_50epi_1 8 danRer11_2 ERR1442561_1.fastq.gz,ERR1442651_1.fastq.gz,ERR1442741_1.fastq.gz,ERR1442831_1.fastq.gz ERR1442561_2.fastq.gz,ERR1442651_2.fastq.gz,ERR1442741_2.fastq.gz,ERR1442831_2.fastq.gz &
# bash ~/bin/RNAseq_PE.sh elife_30860_50epi_2 8 danRer11_2 ERR1442562_1.fastq.gz,ERR1442652_1.fastq.gz,ERR1442742_1.fastq.gz,ERR1442832_1.fastq.gz ERR1442562_2.fastq.gz,ERR1442652_2.fastq.gz,ERR1442742_2.fastq.gz,ERR1442832_2.fastq.gz &
# bash ~/bin/RNAseq_PE.sh elife_30860_50epi_3 8 danRer11_2 ERR1442563_1.fastq.gz,ERR1442653_1.fastq.gz,ERR1442743_1.fastq.gz,ERR1442833_1.fastq.gz ERR1442563_2.fastq.gz,ERR1442653_2.fastq.gz,ERR1442743_2.fastq.gz,ERR1442833_2.fastq.gz &
# bash ~/bin/RNAseq_PE.sh elife_30860_50epi_4 8 danRer11_2 ERR1442564_1.fastq.gz,ERR1442654_1.fastq.gz,ERR1442744_1.fastq.gz,ERR1442834_1.fastq.gz ERR1442564_2.fastq.gz,ERR1442654_2.fastq.gz,ERR1442744_2.fastq.gz,ERR1442834_2.fastq.gz &
# bash ~/bin/RNAseq_PE.sh elife_30860_50epi_5 8 danRer11_2 ERR1442565_1.fastq.gz,ERR1442655_1.fastq.gz,ERR1442745_1.fastq.gz,ERR1442835_1.fastq.gz ERR1442565_2.fastq.gz,ERR1442655_2.fastq.gz,ERR1442745_2.fastq.gz,ERR1442835_2.fastq.gz &
# bash ~/bin/RNAseq_PE.sh elife_30860_6hpf_1 8 danRer11_2 ERR1442601_1.fastq.gz,ERR1442691_1.fastq.gz,ERR1442781_1.fastq.gz,ERR1442871_1.fastq.gz ERR1442601_2.fastq.gz,ERR1442691_2.fastq.gz,ERR1442781_2.fastq.gz,ERR1442871_2.fastq.gz &
# bash ~/bin/RNAseq_PE.sh elife_30860_6hpf_2 8 danRer11_2 ERR1442602_1.fastq.gz,ERR1442692_1.fastq.gz,ERR1442782_1.fastq.gz,ERR1442872_1.fastq.gz ERR1442602_2.fastq.gz,ERR1442692_2.fastq.gz,ERR1442782_2.fastq.gz,ERR1442872_2.fastq.gz &
# bash ~/bin/RNAseq_PE.sh elife_30860_6hpf_3 8 danRer11_2 ERR1442603_1.fastq.gz,ERR1442693_1.fastq.gz,ERR1442783_1.fastq.gz,ERR1442873_1.fastq.gz ERR1442603_2.fastq.gz,ERR1442693_2.fastq.gz,ERR1442783_2.fastq.gz,ERR1442873_2.fastq.gz &
# bash ~/bin/RNAseq_PE.sh elife_30860_6hpf_4 8 danRer11_2 ERR1442604_1.fastq.gz,ERR1442694_1.fastq.gz,ERR1442784_1.fastq.gz,ERR1442874_1.fastq.gz ERR1442604_2.fastq.gz,ERR1442694_2.fastq.gz,ERR1442784_2.fastq.gz,ERR1442874_2.fastq.gz &
# bash ~/bin/RNAseq_PE.sh elife_30860_6hpf_5 8 danRer11_2 ERR1442605_1.fastq.gz,ERR1442695_1.fastq.gz,ERR1442785_1.fastq.gz,ERR1442875_1.fastq.gz ERR1442605_2.fastq.gz,ERR1442695_2.fastq.gz,ERR1442785_2.fastq.gz,ERR1442875_2.fastq.gz &
# bash ~/bin/RNAseq_PE.sh elife_30860_8hpf_1 8 danRer11_2 ERR1442606_1.fastq.gz,ERR1442696_1.fastq.gz,ERR1442786_1.fastq.gz,ERR1442876_1.fastq.gz ERR1442606_2.fastq.gz,ERR1442696_2.fastq.gz,ERR1442786_2.fastq.gz,ERR1442876_2.fastq.gz &
# bash ~/bin/RNAseq_PE.sh elife_30860_8hpf_2 8 danRer11_2 ERR1442607_1.fastq.gz,ERR1442697_1.fastq.gz,ERR1442787_1.fastq.gz,ERR1442877_1.fastq.gz ERR1442607_2.fastq.gz,ERR1442697_2.fastq.gz,ERR1442787_2.fastq.gz,ERR1442877_2.fastq.gz &
# bash ~/bin/RNAseq_PE.sh elife_30860_8hpf_3 8 danRer11_2 ERR1442608_1.fastq.gz,ERR1442698_1.fastq.gz,ERR1442788_1.fastq.gz,ERR1442878_1.fastq.gz ERR1442608_2.fastq.gz,ERR1442698_2.fastq.gz,ERR1442788_2.fastq.gz,ERR1442878_2.fastq.gz &
# bash ~/bin/RNAseq_PE.sh elife_30860_8hpf_4 8 danRer11_2 ERR1442609_1.fastq.gz,ERR1442699_1.fastq.gz,ERR1442789_1.fastq.gz,ERR1442879_1.fastq.gz ERR1442609_2.fastq.gz,ERR1442699_2.fastq.gz,ERR1442789_2.fastq.gz,ERR1442879_2.fastq.gz &
# bash ~/bin/RNAseq_PE.sh elife_30860_8hpf_5 8 danRer11_2 ERR1442610_1.fastq.gz,ERR1442700_1.fastq.gz,ERR1442790_1.fastq.gz,ERR1442880_1.fastq.gz ERR1442610_2.fastq.gz,ERR1442700_2.fastq.gz,ERR1442790_2.fastq.gz,ERR1442880_2.fastq.gz &
# bash ~/bin/RNAseq_PE.sh elife_30860_10.33hpf_1      8 danRer11_2 ERR1442636_1.fastq.gz,ERR1442726_1.fastq.gz,ERR1442816_1.fastq.gz,ERR1442906_1.fastq.gz ERR1442636_2.fastq.gz,ERR1442726_2.fastq.gz,ERR1442816_2.fastq.gz,ERR1442906_2.fastq.gz &
# bash ~/bin/RNAseq_PE.sh elife_30860_10.33hpf_2      8 danRer11_2 ERR1442637_1.fastq.gz,ERR1442727_1.fastq.gz,ERR1442817_1.fastq.gz,ERR1442907_1.fastq.gz ERR1442637_2.fastq.gz,ERR1442727_2.fastq.gz,ERR1442817_2.fastq.gz,ERR1442907_2.fastq.gz &
# bash ~/bin/RNAseq_PE.sh elife_30860_10.33hpf_3      8 danRer11_2 ERR1442638_1.fastq.gz,ERR1442728_1.fastq.gz,ERR1442818_1.fastq.gz,ERR1442908_1.fastq.gz ERR1442638_2.fastq.gz,ERR1442728_2.fastq.gz,ERR1442818_2.fastq.gz,ERR1442908_2.fastq.gz &
# bash ~/bin/RNAseq_PE.sh elife_30860_10.33hpf_4      8 danRer11_2 ERR1442639_1.fastq.gz,ERR1442729_1.fastq.gz,ERR1442819_1.fastq.gz,ERR1442909_1.fastq.gz ERR1442639_2.fastq.gz,ERR1442729_2.fastq.gz,ERR1442819_2.fastq.gz,ERR1442909_2.fastq.gz &
# bash ~/bin/RNAseq_PE.sh elife_30860_10.33hpf_5      8 danRer11_2 ERR1442640_1.fastq.gz,ERR1442730_1.fastq.gz,ERR1442820_1.fastq.gz,ERR1442910_1.fastq.gz ERR1442640_2.fastq.gz,ERR1442730_2.fastq.gz,ERR1442820_2.fastq.gz,ERR1442910_2.fastq.gz &
# bash ~/bin/RNAseq_PE.sh elife_30860_16hpf_somites_1 8 danRer11_2 ERR1442611_1.fastq.gz,ERR1442701_1.fastq.gz,ERR1442791_1.fastq.gz,ERR1442881_1.fastq.gz ERR1442611_2.fastq.gz,ERR1442701_2.fastq.gz,ERR1442791_2.fastq.gz,ERR1442881_2.fastq.gz &
# bash ~/bin/RNAseq_PE.sh elife_30860_16hpf_somites_2 8 danRer11_2 ERR1442612_1.fastq.gz,ERR1442702_1.fastq.gz,ERR1442792_1.fastq.gz,ERR1442882_1.fastq.gz ERR1442612_2.fastq.gz,ERR1442702_2.fastq.gz,ERR1442792_2.fastq.gz,ERR1442882_2.fastq.gz &
# bash ~/bin/RNAseq_PE.sh elife_30860_16hpf_somites_3 8 danRer11_2 ERR1442613_1.fastq.gz,ERR1442703_1.fastq.gz,ERR1442793_1.fastq.gz,ERR1442883_1.fastq.gz ERR1442613_2.fastq.gz,ERR1442703_2.fastq.gz,ERR1442793_2.fastq.gz,ERR1442883_2.fastq.gz &
# bash ~/bin/RNAseq_PE.sh elife_30860_16hpf_somites_4 8 danRer11_2 ERR1442614_1.fastq.gz,ERR1442704_1.fastq.gz,ERR1442794_1.fastq.gz,ERR1442884_1.fastq.gz ERR1442614_2.fastq.gz,ERR1442704_2.fastq.gz,ERR1442794_2.fastq.gz,ERR1442884_2.fastq.gz &
# bash ~/bin/RNAseq_PE.sh elife_30860_16hpf_somites_5 8 danRer11_2 ERR1442615_1.fastq.gz,ERR1442705_1.fastq.gz,ERR1442795_1.fastq.gz,ERR1442885_1.fastq.gz ERR1442615_2.fastq.gz,ERR1442705_2.fastq.gz,ERR1442795_2.fastq.gz,ERR1442885_2.fastq.gz &
# bash ~/bin/RNAseq_PE.sh elife_30860_19hpf_somites_1 8 danRer11_2 ERR1442616_1.fastq.gz,ERR1442706_1.fastq.gz,ERR1442796_1.fastq.gz,ERR1442886_1.fastq.gz ERR1442616_2.fastq.gz,ERR1442706_2.fastq.gz,ERR1442796_2.fastq.gz,ERR1442886_2.fastq.gz &
# bash ~/bin/RNAseq_PE.sh elife_30860_19hpf_somites_2 8 danRer11_2 ERR1442617_1.fastq.gz,ERR1442707_1.fastq.gz,ERR1442797_1.fastq.gz,ERR1442887_1.fastq.gz ERR1442617_2.fastq.gz,ERR1442707_2.fastq.gz,ERR1442797_2.fastq.gz,ERR1442887_2.fastq.gz &
# bash ~/bin/RNAseq_PE.sh elife_30860_19hpf_somites_3 8 danRer11_2 ERR1442618_1.fastq.gz,ERR1442708_1.fastq.gz,ERR1442798_1.fastq.gz,ERR1442888_1.fastq.gz ERR1442618_2.fastq.gz,ERR1442708_2.fastq.gz,ERR1442798_2.fastq.gz,ERR1442888_2.fastq.gz &
# bash ~/bin/RNAseq_PE.sh elife_30860_19hpf_somites_4 8 danRer11_2 ERR1442619_1.fastq.gz,ERR1442709_1.fastq.gz,ERR1442799_1.fastq.gz,ERR1442889_1.fastq.gz ERR1442619_2.fastq.gz,ERR1442709_2.fastq.gz,ERR1442799_2.fastq.gz,ERR1442889_2.fastq.gz &
# bash ~/bin/RNAseq_PE.sh elife_30860_19hpf_somites_5 8 danRer11_2 ERR1442620_1.fastq.gz,ERR1442710_1.fastq.gz,ERR1442800_1.fastq.gz,ERR1442890_1.fastq.gz ERR1442620_2.fastq.gz,ERR1442710_2.fastq.gz,ERR1442800_2.fastq.gz,ERR1442890_2.fastq.gz &
# bash ~/bin/RNAseq_PE.sh elife_30860_24hpf_1         8 danRer11_2 ERR1442566_1.fastq.gz,ERR1442656_1.fastq.gz,ERR1442746_1.fastq.gz,ERR1442836_1.fastq.gz ERR1442566_2.fastq.gz,ERR1442656_2.fastq.gz,ERR1442746_2.fastq.gz,ERR1442836_2.fastq.gz &
# bash ~/bin/RNAseq_PE.sh elife_30860_24hpf_2         8 danRer11_2 ERR1442567_1.fastq.gz,ERR1442657_1.fastq.gz,ERR1442747_1.fastq.gz,ERR1442837_1.fastq.gz ERR1442567_2.fastq.gz,ERR1442657_2.fastq.gz,ERR1442747_2.fastq.gz,ERR1442837_2.fastq.gz &
# bash ~/bin/RNAseq_PE.sh elife_30860_24hpf_3         8 danRer11_2 ERR1442568_1.fastq.gz,ERR1442658_1.fastq.gz,ERR1442748_1.fastq.gz,ERR1442838_1.fastq.gz ERR1442568_2.fastq.gz,ERR1442658_2.fastq.gz,ERR1442748_2.fastq.gz,ERR1442838_2.fastq.gz &
# bash ~/bin/RNAseq_PE.sh elife_30860_24hpf_4         8 danRer11_2 ERR1442569_1.fastq.gz,ERR1442659_1.fastq.gz,ERR1442749_1.fastq.gz,ERR1442839_1.fastq.gz ERR1442569_2.fastq.gz,ERR1442659_2.fastq.gz,ERR1442749_2.fastq.gz,ERR1442839_2.fastq.gz &
# bash ~/bin/RNAseq_PE.sh elife_30860_24hpf_5         8 danRer11_2 ERR1442570_1.fastq.gz,ERR1442660_1.fastq.gz,ERR1442750_1.fastq.gz,ERR1442840_1.fastq.gz ERR1442570_2.fastq.gz,ERR1442660_2.fastq.gz,ERR1442750_2.fastq.gz,ERR1442840_2.fastq.gz &
# bash ~/bin/RNAseq_PE.sh elife_30860_30hpf_1 8 danRer11_2 ERR1442571_1.fastq.gz,ERR1442661_1.fastq.gz,ERR1442751_1.fastq.gz,ERR1442841_1.fastq.gz ERR1442571_2.fastq.gz,ERR1442661_2.fastq.gz,ERR1442751_2.fastq.gz,ERR1442841_2.fastq.gz &
# bash ~/bin/RNAseq_PE.sh elife_30860_30hpf_2 8 danRer11_2 ERR1442572_1.fastq.gz,ERR1442662_1.fastq.gz,ERR1442752_1.fastq.gz,ERR1442842_1.fastq.gz ERR1442572_2.fastq.gz,ERR1442662_2.fastq.gz,ERR1442752_2.fastq.gz,ERR1442842_2.fastq.gz &
# bash ~/bin/RNAseq_PE.sh elife_30860_30hpf_3 8 danRer11_2 ERR1442573_1.fastq.gz,ERR1442663_1.fastq.gz,ERR1442753_1.fastq.gz,ERR1442843_1.fastq.gz ERR1442573_2.fastq.gz,ERR1442663_2.fastq.gz,ERR1442753_2.fastq.gz,ERR1442843_2.fastq.gz &
# bash ~/bin/RNAseq_PE.sh elife_30860_30hpf_4 8 danRer11_2 ERR1442574_1.fastq.gz,ERR1442664_1.fastq.gz,ERR1442754_1.fastq.gz,ERR1442844_1.fastq.gz ERR1442574_2.fastq.gz,ERR1442664_2.fastq.gz,ERR1442754_2.fastq.gz,ERR1442844_2.fastq.gz &
# bash ~/bin/RNAseq_PE.sh elife_30860_30hpf_5 8 danRer11_2 ERR1442575_1.fastq.gz,ERR1442665_1.fastq.gz,ERR1442755_1.fastq.gz,ERR1442845_1.fastq.gz ERR1442575_2.fastq.gz,ERR1442665_2.fastq.gz,ERR1442755_2.fastq.gz,ERR1442845_2.fastq.gz &

# bash ~/bin/RNAseq_PE.sh elife_30860_36hpf_1 8 danRer11_2 ERR1442576_1.fastq.gz,ERR1442666_1.fastq.gz,ERR1442756_1.fastq.gz,ERR1442846_1.fastq.gz ERR1442576_2.fastq.gz,ERR1442666_2.fastq.gz,ERR1442756_2.fastq.gz,ERR1442846_2.fastq.gz &
# bash ~/bin/RNAseq_PE.sh elife_30860_36hpf_2 8 danRer11_2 ERR1442577_1.fastq.gz,ERR1442667_1.fastq.gz,ERR1442757_1.fastq.gz,ERR1442847_1.fastq.gz ERR1442577_2.fastq.gz,ERR1442667_2.fastq.gz,ERR1442757_2.fastq.gz,ERR1442847_2.fastq.gz &
# bash ~/bin/RNAseq_PE.sh elife_30860_36hpf_3 8 danRer11_2 ERR1442578_1.fastq.gz,ERR1442668_1.fastq.gz,ERR1442758_1.fastq.gz,ERR1442848_1.fastq.gz ERR1442578_2.fastq.gz,ERR1442668_2.fastq.gz,ERR1442758_2.fastq.gz,ERR1442848_2.fastq.gz &
# bash ~/bin/RNAseq_PE.sh elife_30860_36hpf_4 8 danRer11_2 ERR1442579_1.fastq.gz,ERR1442669_1.fastq.gz,ERR1442759_1.fastq.gz,ERR1442849_1.fastq.gz ERR1442579_2.fastq.gz,ERR1442669_2.fastq.gz,ERR1442759_2.fastq.gz,ERR1442849_2.fastq.gz &
# bash ~/bin/RNAseq_PE.sh elife_30860_36hpf_5 8 danRer11_2 ERR1442580_1.fastq.gz,ERR1442670_1.fastq.gz,ERR1442760_1.fastq.gz,ERR1442850_1.fastq.gz ERR1442580_2.fastq.gz,ERR1442670_2.fastq.gz,ERR1442760_2.fastq.gz,ERR1442850_2.fastq.gz &



# --- 05 SRR8257203 SRR8257204 SRR8257205 

# project_accession=PRJNA507426
# cd 0_raw_data
# ena_meta_download ${project_accession}
# mv ${project_accession}.tsv ${project_accession}.tsv.tmp
# cat <(head -1 ${project_accession}.tsv.tmp) <(egrep "SRR8257203|SRR8257204|SRR8257205" ${project_accession}.tsv.tmp) > ${project_accession}.tsv
# # rm ${project_accession}.tsv.tmp
# gen_download_from_ebi.py ${project_accession}.tsv ${project_accession}.sh
# bash ${project_accession}.sh
# md5_of_ENAfastq_generate.py ${project_accession}.tsv ${project_accession}.md5
# md5sum -c ${project_accession}.md5
# cd ..

# bash ~/bin/RNAseq_SE.sh                36hpf_rep2 10 danRer11_2 SRR8257204.fastq.gz &
# bash ~/bin/RNAseq_SE.sh                36hpf_rep1 10 danRer11_2 SRR8257203.fastq.gz &
# bash ~/bin/RNAseq_SE.sh                36hpf_rep3 10 danRer11_2 SRR8257205.fastq.gz &



# --- 06 PRJNA493632 SRR7909899 SRR7909900 SRR7909901 SRR7909902 SRR7909903 SRR7909904 SRR7909905 SRR7909906 SRR7909907 SRR7909908 SRR7909909 SRR7909910 SRR7909911 SRR7909912 SRR7909913 SRR7909914 SRR7909915 SRR7909916 SRR7909917 SRR7909918 SRR7909919 SRR7909920 SRR7909921 SRR7909922 

# bash ~/bin/RNAseq_PE.sh    36hpf_endothelial_rep1 10 danRer11_2 SRR7909899_1.fastq.gz SRR7909899_2.fastq.gz &
# bash ~/bin/RNAseq_PE.sh    36hpf_endothelial_rep2 10 danRer11_2 SRR7909900_1.fastq.gz SRR7909900_2.fastq.gz &
# bash ~/bin/RNAseq_PE.sh           36hpf_HSPC_rep1 10 danRer11_2 SRR7909901_1.fastq.gz SRR7909901_2.fastq.gz &
# bash ~/bin/RNAseq_PE.sh           36hpf_HSPC_rep2 10 danRer11_2 SRR7909902_1.fastq.gz SRR7909902_2.fastq.gz &
# bash ~/bin/RNAseq_PE.sh            36hpf_NHC_rep1 10 danRer11_2 SRR7909903_1.fastq.gz SRR7909903_2.fastq.gz &
# bash ~/bin/RNAseq_PE.sh            36hpf_NHC_rep2 10 danRer11_2 SRR7909904_1.fastq.gz SRR7909904_2.fastq.gz &



# ----- 07 Jan-2-2020 GSE142599 28hpf/36hpf embryos -----

# project_accession=PRJNA597725
# cd 0_raw_data
# ena_meta_download ${project_accession}
# mv ${project_accession}.tsv ${project_accession}.tsv.tmp
# cat <(head -1 ${project_accession}.tsv.tmp) <(egrep "SRR10767278|SRR10767279|SRR10767280|SRR10767287|SRR10767288|SRR10767289" ${project_accession}.tsv.tmp) > ${project_accession}.tsv
# # rm ${project_accession}.tsv.tmp
# gen_download_from_ebi.py ${project_accession}.tsv ${project_accession}.sh
# bash ${project_accession}.sh
# md5_of_ENAfastq_generate.py ${project_accession}.tsv ${project_accession}.md5
# md5sum -c ${project_accession}.md5
# cd ..

# bash ~/bin/RNAseq_SE.sh 28hpf_rep3 10 danRer11_2 SRR10767278.fastq.gz
# bash ~/bin/RNAseq_SE.sh 28hpf_rep4 10 danRer11_2 SRR10767279.fastq.gz
# bash ~/bin/RNAseq_SE.sh 28hpf_rep5 10 danRer11_2 SRR10767280.fastq.gz
# bash ~/bin/RNAseq_SE.sh 36hpf_rep4 10 danRer11_2 SRR10767287.fastq.gz
# bash ~/bin/RNAseq_SE.sh 36hpf_rep5 10 danRer11_2 SRR10767288.fastq.gz
# bash ~/bin/RNAseq_SE.sh 36hpf_rep6 10 danRer11_2 SRR10767289.fastq.gz



# ----- 08 Jan-5-2020 GSE119070 1cell/high/24hpf whole embryo -----

# project_accession=PRJNA488043
# cd 0_raw_data
# ena_meta_download ${project_accession}
# mv ${project_accession}.tsv ${project_accession}.tsv.tmp
# cat <(head -1 ${project_accession}.tsv.tmp) <(egrep "SRR775782[5-9]|SRR7757830|SRR9962799|SRR996280[0-3]|SRR996281[7-9]|SRR996282[0-1]" ${project_accession}.tsv.tmp) > ${project_accession}.tsv
# # rm ${project_accession}.tsv.tmp
# gen_download_from_ebi.py ${project_accession}.tsv ${project_accession}.sh
# bash ${project_accession}.sh
# md5_of_ENAfastq_generate.py ${project_accession}.tsv ${project_accession}.md5
# md5sum -c ${project_accession}.md5
# cd ..

# bash ~/bin/RNAseq_SE.sh 24hpf_rep1 20 danRer11_2 SRR7757825.fastq.gz
# bash ~/bin/RNAseq_SE.sh 24hpf_rep2 20 danRer11_2 SRR7757826.fastq.gz
# bash ~/bin/RNAseq_PE.sh 24hpf_rep3 20 danRer11_2 SRR7757827_1.fastq.gz SRR7757827_2.fastq.gz
# bash ~/bin/RNAseq_PE.sh 24hpf_rep4 20 danRer11_2 SRR7757828_1.fastq.gz SRR7757828_2.fastq.gz
# bash ~/bin/RNAseq_PE.sh 24hpf_rep5 20 danRer11_2 SRR7757829_1.fastq.gz SRR7757829_2.fastq.gz
# bash ~/bin/RNAseq_PE.sh 24hpf_rep6 20 danRer11_2 SRR7757830_1.fastq.gz SRR7757830_2.fastq.gz
# bash ~/bin/RNAseq_SE.sh 1cell_rep1 20 danRer11_2 SRR9962799.fastq.gz
# bash ~/bin/RNAseq_SE.sh 1cell_rep2 20 danRer11_2 SRR9962800.fastq.gz
# bash ~/bin/RNAseq_PE.sh 1cell_rep3 20 danRer11_2 SRR9962801_1.fastq.gz SRR9962801_2.fastq.gz
# bash ~/bin/RNAseq_PE.sh 1cell_rep4 20 danRer11_2 SRR9962802_1.fastq.gz SRR9962802_2.fastq.gz
# bash ~/bin/RNAseq_PE.sh 1cell_rep5 20 danRer11_2 SRR9962803_1.fastq.gz SRR9962803_2.fastq.gz
# bash ~/bin/RNAseq_PE.sh  high_rep1 20 danRer11_2 SRR9962817_1.fastq.gz SRR9962817_2.fastq.gz
# bash ~/bin/RNAseq_PE.sh  high_rep2 20 danRer11_2 SRR9962818_1.fastq.gz SRR9962818_2.fastq.gz
# bash ~/bin/RNAseq_PE.sh  high_rep3 20 danRer11_2 SRR9962819_1.fastq.gz SRR9962819_2.fastq.gz
# bash ~/bin/RNAseq_PE.sh  high_rep4 20 danRer11_2 SRR9962820_1.fastq.gz SRR9962820_2.fastq.gz
# bash ~/bin/RNAseq_PE.sh  high_rep5 20 danRer11_2 SRR9962821_1.fastq.gz SRR9962821_2.fastq.gz



# ----- 09 Jan-6-2020 GSE135237 36hpf/72hpf neural crest cells -----
# added
# bash ~/bin/RNAseq_PE.sh 36hpf_neural_crest_rep1 20 danRer11_2 SRR9879913_1.fastq.gz SRR9879913_2.fastq.gz
# bash ~/bin/RNAseq_PE.sh 36hpf_neural_crest_rep2 20 danRer11_2 SRR9879914_1.fastq.gz SRR9879914_2.fastq.gz
# bash ~/bin/RNAseq_PE.sh 36hpf_neural_crest_rep3 20 danRer11_2 SRR9879915_1.fastq.gz SRR9879915_2.fastq.gz



# ----- 10 Jan-9-2020 GSE132304 20ss/52hpf/72hpf skin -----
# added
# bash ~/bin/RNAseq_SE.sh   20ss_allskin_rep1 20 danRer11_2 SRR9211484.fastq.gz
# bash ~/bin/RNAseq_SE.sh   20ss_allskin_rep2 20 danRer11_2 SRR9211485.fastq.gz



# ----- 11 Feb-4-2020 GSE120643 0/2/3/4/6hpf embryo -----

# project_accession=PRJNA493827
# cd 0_raw_data
# ena_meta_download ${project_accession}
# mv ${project_accession}.tsv ${project_accession}.tsv.tmp
# cat <(head -1 ${project_accession}.tsv.tmp) <(egrep "SRR794260[5-9]|SRR794261[0-4]" ${project_accession}.tsv.tmp) > ${project_accession}.tsv
# # rm ${project_accession}.tsv.tmp
# gen_download_from_ebi.py ${project_accession}.tsv ${project_accession}.sh
# bash ${project_accession}.sh
# md5_of_ENAfastq_generate.py ${project_accession}.tsv ${project_accession}.md5
# md5sum -c ${project_accession}.md5
# cd ..

# added
# bash ~/bin/RNAseq_PE.sh  1cell_rep6 20 danRer11_2 SRR7942605_1.fastq.gz SRR7942605_2.fastq.gz
# bash ~/bin/RNAseq_PE.sh  1cell_rep7 20 danRer11_2 SRR7942606_1.fastq.gz SRR7942606_2.fastq.gz
# bash ~/bin/RNAseq_PE.sh 64cell_rep1 20 danRer11_2 SRR7942607_1.fastq.gz SRR7942607_2.fastq.gz
# bash ~/bin/RNAseq_PE.sh 64cell_rep2 20 danRer11_2 SRR7942608_1.fastq.gz SRR7942608_2.fastq.gz
# bash ~/bin/RNAseq_PE.sh 1kcell_rep3 20 danRer11_2 SRR7942609_1.fastq.gz SRR7942609_2.fastq.gz
# bash ~/bin/RNAseq_PE.sh 1kcell_rep4 20 danRer11_2 SRR7942610_1.fastq.gz SRR7942610_2.fastq.gz
# bash ~/bin/RNAseq_PE.sh sphere_rep1 20 danRer11_2 SRR7942611_1.fastq.gz SRR7942611_2.fastq.gz
# bash ~/bin/RNAseq_PE.sh sphere_rep2 20 danRer11_2 SRR7942612_1.fastq.gz SRR7942612_2.fastq.gz
# bash ~/bin/RNAseq_PE.sh shield_rep4 20 danRer11_2 SRR7942613_1.fastq.gz SRR7942613_2.fastq.gz
# bash ~/bin/RNAseq_PE.sh shield_rep5 20 danRer11_2 SRR7942614_1.fastq.gz SRR7942614_2.fastq.gz



# ----- 12 Feb-6-2020 7/24hpf pgc/somatic -----

# project_accession=PRJNA529645
# cd 0_raw_data
# ena_meta_download ${project_accession}
# mv ${project_accession}.tsv ${project_accession}.tsv.tmp
# cat <(head -1 ${project_accession}.tsv.tmp) <(egrep "SRR879902[6-9]|SRR879903[0-3]" ${project_accession}.tsv.tmp) > ${project_accession}.tsv
# # rm ${project_accession}.tsv.tmp
# gen_download_from_ebi.py ${project_accession}.tsv ${project_accession}.sh
# bash ${project_accession}.sh
# md5_of_ENAfastq_generate.py ${project_accession}.tsv ${project_accession}.md5
# md5sum -c ${project_accession}.md5
# cd ..

# added
# bash ~/bin/RNAseq_PE.sh      7hpf_pgc_rep1 20 danRer11_2 SRR8799026_1.fastq.gz SRR8799026_2.fastq.gz
# bash ~/bin/RNAseq_PE.sh      7hpf_pgc_rep2 20 danRer11_2 SRR8799027_1.fastq.gz SRR8799027_2.fastq.gz
# bash ~/bin/RNAseq_PE.sh     24hpf_pgc_rep1 20 danRer11_2 SRR8799028_1.fastq.gz SRR8799028_2.fastq.gz
# bash ~/bin/RNAseq_PE.sh     24hpf_pgc_rep2 20 danRer11_2 SRR8799029_1.fastq.gz SRR8799029_2.fastq.gz
# bash ~/bin/RNAseq_PE.sh  7hpf_somatic_rep1 20 danRer11_2 SRR8799030_1.fastq.gz SRR8799030_2.fastq.gz
# bash ~/bin/RNAseq_PE.sh  7hpf_somatic_rep2 20 danRer11_2 SRR8799031_1.fastq.gz SRR8799031_2.fastq.gz
# bash ~/bin/RNAseq_PE.sh 24hpf_somatic_rep1 20 danRer11_2 SRR8799032_1.fastq.gz SRR8799032_2.fastq.gz
# bash ~/bin/RNAseq_PE.sh 24hpf_somatic_rep2 20 danRer11_2 SRR8799033_1.fastq.gz SRR8799033_2.fastq.gz



# ----- 13 Feb-22-2020 4/7/24/36 pgc/somatic -----

# project_accession=PRJNA505329
# cd 0_raw_data
# ena_meta_download ${project_accession}
# mv ${project_accession}.tsv ${project_accession}.tsv.tmp
# cat <(head -1 ${project_accession}.tsv.tmp) <(egrep "SRR818216[1-9]|SRR818217[0-6]" ${project_accession}.tsv.tmp) > ${project_accession}.tsv
# # rm ${project_accession}.tsv.tmp
# gen_download_from_ebi.py ${project_accession}.tsv ${project_accession}.sh
# bash ${project_accession}.sh
# md5_of_ENAfastq_generate.py ${project_accession}.tsv ${project_accession}.md5
# md5sum -c ${project_accession}.md5
# cd ..

# added
# bash ~/bin/RNAseq_PE.sh      4hpf_pgc_rep1 20 danRer11_2 SRR8182161_1.fastq.gz SRR8182161_2.fastq.gz
# bash ~/bin/RNAseq_PE.sh      4hpf_pgc_rep2 20 danRer11_2 SRR8182162_1.fastq.gz SRR8182162_2.fastq.gz
# bash ~/bin/RNAseq_PE.sh      7hpf_pgc_rep3 20 danRer11_2 SRR8182163_1.fastq.gz SRR8182163_2.fastq.gz
# bash ~/bin/RNAseq_PE.sh      7hpf_pgc_rep4 20 danRer11_2 SRR8182164_1.fastq.gz SRR8182164_2.fastq.gz
# bash ~/bin/RNAseq_PE.sh     24hpf_pgc_rep3 20 danRer11_2 SRR8182165_1.fastq.gz SRR8182165_2.fastq.gz
# bash ~/bin/RNAseq_PE.sh     24hpf_pgc_rep4 20 danRer11_2 SRR8182166_1.fastq.gz SRR8182166_2.fastq.gz
# bash ~/bin/RNAseq_PE.sh  4hpf_somatic_rep1 20 danRer11_2 SRR8182169_1.fastq.gz SRR8182169_2.fastq.gz
# bash ~/bin/RNAseq_PE.sh  4hpf_somatic_rep2 20 danRer11_2 SRR8182170_1.fastq.gz SRR8182170_2.fastq.gz
# bash ~/bin/RNAseq_PE.sh  7hpf_somatic_rep3 20 danRer11_2 SRR8182171_1.fastq.gz SRR8182171_2.fastq.gz
# bash ~/bin/RNAseq_PE.sh  7hpf_somatic_rep4 20 danRer11_2 SRR8182172_1.fastq.gz SRR8182172_2.fastq.gz
# bash ~/bin/RNAseq_PE.sh 24hpf_somatic_rep3 20 danRer11_2 SRR8182173_1.fastq.gz SRR8182173_2.fastq.gz
# bash ~/bin/RNAseq_PE.sh 24hpf_somatic_rep4 20 danRer11_2 SRR8182174_1.fastq.gz SRR8182174_2.fastq.gz

# RNAseq_PE_step.sh     36hpf_pgc_rep1 2 20 danRer11_2 SRR8182167_1.fastq.gz SRR8182167_2.fastq.gz ensGene
# RNAseq_PE_step.sh     36hpf_pgc_rep2 2 20 danRer11_2 SRR8182168_1.fastq.gz SRR8182168_2.fastq.gz ensGene
# RNAseq_PE_step.sh 36hpf_somatic_rep1 2 20 danRer11_2 SRR8182175_1.fastq.gz SRR8182175_2.fastq.gz ensGene
# RNAseq_PE_step.sh 36hpf_somatic_rep2 2 20 danRer11_2 SRR8182176_1.fastq.gz SRR8182176_2.fastq.gz ensGene





