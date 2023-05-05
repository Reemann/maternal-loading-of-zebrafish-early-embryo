#!/bin/bash

function ena_meta_download {
    project_accession=${1}
    wget -O ${project_accession}.tsv "https://www.ebi.ac.uk/ena/portal/api/filereport?accession=${project_accession}&result=read_run&fields=sample_accession,experiment_accession,run_accession,scientific_name,library_layout,fastq_md5,fastq_ftp&format=tsv&download=true"
}

# ----- 01 early embryonic development paired-end -----

# added
# bash ~/bin/RNAseq_PE_exon.sh    2dpf_1 10 danRer11_2  SRR372800_1.fastq.gz  SRR372800_2.fastq.gz &
# bash ~/bin/RNAseq_PE_exon.sh    2dpf_2 10 danRer11_2  SRR372801_1.fastq.gz  SRR372801_2.fastq.gz &
# bash ~/bin/RNAseq_PE_exon.sh    5dpf_1 10 danRer11_2  SRR372802_1.fastq.gz  SRR372802_2.fastq.gz &
# bash ~/bin/RNAseq_PE_exon.sh    5dpf_2 10 danRer11_2  SRR372803_1.fastq.gz  SRR372803_2.fastq.gz &


# ----- 04 elife embryonic -----

# bash ~/bin/RNAseq_PE_exon.sh elife_30860_2dpf_1 8 danRer11_2 ERR1442581_1.fastq.gz,ERR1442671_1.fastq.gz,ERR1442761_1.fastq.gz,ERR1442851_1.fastq.gz ERR1442581_2.fastq.gz,ERR1442671_2.fastq.gz,ERR1442761_2.fastq.gz,ERR1442851_2.fastq.gz &
# bash ~/bin/RNAseq_PE_exon.sh elife_30860_2dpf_2 8 danRer11_2 ERR1442582_1.fastq.gz,ERR1442672_1.fastq.gz,ERR1442762_1.fastq.gz,ERR1442852_1.fastq.gz ERR1442582_2.fastq.gz,ERR1442672_2.fastq.gz,ERR1442762_2.fastq.gz,ERR1442852_2.fastq.gz &
# bash ~/bin/RNAseq_PE_exon.sh elife_30860_2dpf_3 8 danRer11_2 ERR1442583_1.fastq.gz,ERR1442673_1.fastq.gz,ERR1442763_1.fastq.gz,ERR1442853_1.fastq.gz ERR1442583_2.fastq.gz,ERR1442673_2.fastq.gz,ERR1442763_2.fastq.gz,ERR1442853_2.fastq.gz &
# bash ~/bin/RNAseq_PE_exon.sh elife_30860_2dpf_4 8 danRer11_2 ERR1442584_1.fastq.gz,ERR1442674_1.fastq.gz,ERR1442764_1.fastq.gz,ERR1442854_1.fastq.gz ERR1442584_2.fastq.gz,ERR1442674_2.fastq.gz,ERR1442764_2.fastq.gz,ERR1442854_2.fastq.gz &
# bash ~/bin/RNAseq_PE_exon.sh elife_30860_2dpf_5 8 danRer11_2 ERR1442585_1.fastq.gz,ERR1442675_1.fastq.gz,ERR1442765_1.fastq.gz,ERR1442855_1.fastq.gz ERR1442585_2.fastq.gz,ERR1442675_2.fastq.gz,ERR1442765_2.fastq.gz,ERR1442855_2.fastq.gz &
# bash ~/bin/RNAseq_PE_exon.sh elife_30860_3dpf_1 8 danRer11_2 ERR1442586_1.fastq.gz,ERR1442676_1.fastq.gz,ERR1442766_1.fastq.gz,ERR1442856_1.fastq.gz ERR1442586_2.fastq.gz,ERR1442676_2.fastq.gz,ERR1442766_2.fastq.gz,ERR1442856_2.fastq.gz &
# bash ~/bin/RNAseq_PE_exon.sh elife_30860_3dpf_2 8 danRer11_2 ERR1442587_1.fastq.gz,ERR1442677_1.fastq.gz,ERR1442767_1.fastq.gz,ERR1442857_1.fastq.gz ERR1442587_2.fastq.gz,ERR1442677_2.fastq.gz,ERR1442767_2.fastq.gz,ERR1442857_2.fastq.gz &
# bash ~/bin/RNAseq_PE_exon.sh elife_30860_3dpf_3 8 danRer11_2 ERR1442588_1.fastq.gz,ERR1442678_1.fastq.gz,ERR1442768_1.fastq.gz,ERR1442858_1.fastq.gz ERR1442588_2.fastq.gz,ERR1442678_2.fastq.gz,ERR1442768_2.fastq.gz,ERR1442858_2.fastq.gz &
# bash ~/bin/RNAseq_PE_exon.sh elife_30860_3dpf_4 8 danRer11_2 ERR1442589_1.fastq.gz,ERR1442679_1.fastq.gz,ERR1442769_1.fastq.gz,ERR1442859_1.fastq.gz ERR1442589_2.fastq.gz,ERR1442679_2.fastq.gz,ERR1442769_2.fastq.gz,ERR1442859_2.fastq.gz &
# bash ~/bin/RNAseq_PE_exon.sh elife_30860_3dpf_5 8 danRer11_2 ERR1442590_1.fastq.gz,ERR1442680_1.fastq.gz,ERR1442770_1.fastq.gz,ERR1442860_1.fastq.gz ERR1442590_2.fastq.gz,ERR1442680_2.fastq.gz,ERR1442770_2.fastq.gz,ERR1442860_2.fastq.gz &
# bash ~/bin/RNAseq_PE_exon.sh elife_30860_4dpf_1 8 danRer11_2 ERR1442591_1.fastq.gz,ERR1442681_1.fastq.gz,ERR1442771_1.fastq.gz,ERR1442861_1.fastq.gz ERR1442591_2.fastq.gz,ERR1442681_2.fastq.gz,ERR1442771_2.fastq.gz,ERR1442861_2.fastq.gz &
# bash ~/bin/RNAseq_PE_exon.sh elife_30860_4dpf_2 8 danRer11_2 ERR1442592_1.fastq.gz,ERR1442682_1.fastq.gz,ERR1442772_1.fastq.gz,ERR1442862_1.fastq.gz ERR1442592_2.fastq.gz,ERR1442682_2.fastq.gz,ERR1442772_2.fastq.gz,ERR1442862_2.fastq.gz &
# bash ~/bin/RNAseq_PE_exon.sh elife_30860_4dpf_3 8 danRer11_2 ERR1442593_1.fastq.gz,ERR1442683_1.fastq.gz,ERR1442773_1.fastq.gz,ERR1442863_1.fastq.gz ERR1442593_2.fastq.gz,ERR1442683_2.fastq.gz,ERR1442773_2.fastq.gz,ERR1442863_2.fastq.gz &
# bash ~/bin/RNAseq_PE_exon.sh elife_30860_4dpf_4 8 danRer11_2 ERR1442594_1.fastq.gz,ERR1442684_1.fastq.gz,ERR1442774_1.fastq.gz,ERR1442864_1.fastq.gz ERR1442594_2.fastq.gz,ERR1442684_2.fastq.gz,ERR1442774_2.fastq.gz,ERR1442864_2.fastq.gz &
# bash ~/bin/RNAseq_PE_exon.sh elife_30860_4dpf_5 8 danRer11_2 ERR1442595_1.fastq.gz,ERR1442685_1.fastq.gz,ERR1442775_1.fastq.gz,ERR1442865_1.fastq.gz ERR1442595_2.fastq.gz,ERR1442685_2.fastq.gz,ERR1442775_2.fastq.gz,ERR1442865_2.fastq.gz &
# bash ~/bin/RNAseq_PE_exon.sh elife_30860_5dpf_1 8 danRer11_2 ERR1442596_1.fastq.gz,ERR1442686_1.fastq.gz,ERR1442776_1.fastq.gz,ERR1442866_1.fastq.gz ERR1442596_2.fastq.gz,ERR1442686_2.fastq.gz,ERR1442776_2.fastq.gz,ERR1442866_2.fastq.gz &
# bash ~/bin/RNAseq_PE_exon.sh elife_30860_5dpf_2 8 danRer11_2 ERR1442597_1.fastq.gz,ERR1442687_1.fastq.gz,ERR1442777_1.fastq.gz,ERR1442867_1.fastq.gz ERR1442597_2.fastq.gz,ERR1442687_2.fastq.gz,ERR1442777_2.fastq.gz,ERR1442867_2.fastq.gz &
# bash ~/bin/RNAseq_PE_exon.sh elife_30860_5dpf_3 8 danRer11_2 ERR1442598_1.fastq.gz,ERR1442688_1.fastq.gz,ERR1442778_1.fastq.gz,ERR1442868_1.fastq.gz ERR1442598_2.fastq.gz,ERR1442688_2.fastq.gz,ERR1442778_2.fastq.gz,ERR1442868_2.fastq.gz &
# bash ~/bin/RNAseq_PE_exon.sh elife_30860_5dpf_4 8 danRer11_2 ERR1442599_1.fastq.gz,ERR1442689_1.fastq.gz,ERR1442779_1.fastq.gz,ERR1442869_1.fastq.gz ERR1442599_2.fastq.gz,ERR1442689_2.fastq.gz,ERR1442779_2.fastq.gz,ERR1442869_2.fastq.gz &
# bash ~/bin/RNAseq_PE_exon.sh elife_30860_5dpf_5 8 danRer11_2 ERR1442600_1.fastq.gz,ERR1442690_1.fastq.gz,ERR1442780_1.fastq.gz,ERR1442870_1.fastq.gz ERR1442600_2.fastq.gz,ERR1442690_2.fastq.gz,ERR1442780_2.fastq.gz,ERR1442870_2.fastq.gz &



# --- 14 SRR7875953

# project_accession=PRJNA491832
# cd 0_raw_data
# ena_meta_download ${project_accession}
# mv ${project_accession}.tsv ${project_accession}.tsv.tmp
# cat <(head -1 ${project_accession}.tsv.tmp) <(egrep "SRR7875953" ${project_accession}.tsv.tmp) > ${project_accession}.tsv
# # rm ${project_accession}.tsv.tmp
# gen_download_from_ebi.py ${project_accession}.tsv ${project_accession}.sh
# bash ${project_accession}.sh
# md5_of_ENAfastq_generate.py ${project_accession}.tsv ${project_accession}.md5
# md5sum -c ${project_accession}.md5
# cd ..

# bash ~/bin/RNAseq_PE_exon.sh                 6dpf_rep1 10 danRer11_2 SRR7875953_1.fastq.gz SRR7875953_2.fastq.gz &



# --- 06 SRR7909899 SRR7909900 SRR7909901 SRR7909902 SRR7909903 SRR7909904 SRR7909905 SRR7909906 SRR7909907 SRR7909908 SRR7909909 SRR7909910 SRR7909911 SRR7909912 SRR7909913 SRR7909914 SRR7909915 SRR7909916 SRR7909917 SRR7909918 SRR7909919 SRR7909920 SRR7909921 SRR7909922 

# project_accession=PRJNA493632
# cd 0_raw_data
# ena_meta_download ${project_accession}
# # rm ${project_accession}.tsv.tmp
# gen_download_from_ebi.py ${project_accession}.tsv ${project_accession}.sh
# bash ${project_accession}.sh
# md5_of_ENAfastq_generate.py ${project_accession}.tsv ${project_accession}.md5
# md5sum -c ${project_accession}.md5
# cd ..

# bash ~/bin/RNAseq_PE_exon.sh        52hpf_CHT_NHC_rep1 10 danRer11_2 SRR7909905_1.fastq.gz SRR7909905_2.fastq.gz &
# bash ~/bin/RNAseq_PE_exon.sh        52hpf_CHT_NHC_rep2 10 danRer11_2 SRR7909906_1.fastq.gz SRR7909906_2.fastq.gz &
# bash ~/bin/RNAseq_PE_exon.sh 3dpf_CHT_endothelial_rep1 10 danRer11_2 SRR7909907_1.fastq.gz SRR7909907_2.fastq.gz &
# bash ~/bin/RNAseq_PE_exon.sh 3dpf_CHT_endothelial_rep2 10 danRer11_2 SRR7909908_1.fastq.gz SRR7909908_2.fastq.gz &
# bash ~/bin/RNAseq_PE_exon.sh        3dpf_CHT_HSPC_rep1 10 danRer11_2 SRR7909909_1.fastq.gz SRR7909909_2.fastq.gz &
# bash ~/bin/RNAseq_PE_exon.sh        3dpf_CHT_HSPC_rep2 10 danRer11_2 SRR7909910_1.fastq.gz SRR7909910_2.fastq.gz &
# bash ~/bin/RNAseq_PE_exon.sh         3dpf_CHT_NHC_rep1 10 danRer11_2 SRR7909911_1.fastq.gz SRR7909911_2.fastq.gz &
# bash ~/bin/RNAseq_PE_exon.sh         3dpf_CHT_NHC_rep2 10 danRer11_2 SRR7909912_1.fastq.gz SRR7909912_2.fastq.gz &
# bash ~/bin/RNAseq_PE_exon.sh 4dpf_CHT_endothelial_rep1 10 danRer11_2 SRR7909913_1.fastq.gz SRR7909913_2.fastq.gz &
# bash ~/bin/RNAseq_PE_exon.sh 4dpf_CHT_endothelial_rep2 10 danRer11_2 SRR7909914_1.fastq.gz SRR7909914_2.fastq.gz &
# bash ~/bin/RNAseq_PE_exon.sh        4dpf_CHT_HSPC_rep1 10 danRer11_2 SRR7909915_1.fastq.gz SRR7909915_2.fastq.gz &
# bash ~/bin/RNAseq_PE_exon.sh        4dpf_CHT_HSPC_rep2 10 danRer11_2 SRR7909916_1.fastq.gz SRR7909916_2.fastq.gz &
# bash ~/bin/RNAseq_PE_exon.sh         4dpf_CHT_NHC_rep1 10 danRer11_2 SRR7909917_1.fastq.gz SRR7909917_2.fastq.gz &
# bash ~/bin/RNAseq_PE_exon.sh         4dpf_CHT_NHC_rep2 10 danRer11_2 SRR7909918_1.fastq.gz SRR7909918_2.fastq.gz &
# bash ~/bin/RNAseq_PE_exon.sh     3mpf_kidney_HSPC_rep1 10 danRer11_2 SRR7909919_1.fastq.gz SRR7909919_2.fastq.gz &
# bash ~/bin/RNAseq_PE_exon.sh     3mpf_kidney_HSPC_rep2 10 danRer11_2 SRR7909920_1.fastq.gz SRR7909920_2.fastq.gz &
# bash ~/bin/RNAseq_PE_exon.sh      3mpf_kidney_NHC_rep1 10 danRer11_2 SRR7909921_1.fastq.gz SRR7909921_2.fastq.gz &
# bash ~/bin/RNAseq_PE_exon.sh      3mpf_kidney_NHC_rep2 10 danRer11_2 SRR7909922_1.fastq.gz SRR7909922_2.fastq.gz &



# --- 15 SRR8816377 SRR8816378 SRR8816379

# project_accession=PRJNA529924
# cd 0_raw_data
# ena_meta_download ${project_accession}
# mv ${project_accession}.tsv ${project_accession}.tsv.tmp
# cat <(head -1 ${project_accession}.tsv.tmp) <(egrep "SRR8816377|SRR8816378|SRR8816379" ${project_accession}.tsv.tmp) > ${project_accession}.tsv
# # rm ${project_accession}.tsv.tmp
# gen_download_from_ebi.py ${project_accession}.tsv ${project_accession}.sh
# bash ${project_accession}.sh
# md5_of_ENAfastq_generate.py ${project_accession}.tsv ${project_accession}.md5
# md5sum -c ${project_accession}.md5
# cd ..

# bash ~/bin/RNAseq_PE_exon.sh                 3wpf_rep1 10 danRer11_2 SRR8816377_1.fastq.gz SRR8816377_2.fastq.gz &
# bash ~/bin/RNAseq_PE_exon.sh                 3wpf_rep2 10 danRer11_2 SRR8816378_1.fastq.gz SRR8816378_2.fastq.gz &
# bash ~/bin/RNAseq_PE_exon.sh                 3wpf_rep3 10 danRer11_2 SRR8816379_1.fastq.gz SRR8816379_2.fastq.gz &



# ----- 16 Jan-1-2020 GSE128511 56 hpf heart -----

# project_accession=PRJNA527965
# cd 0_raw_data
# ena_meta_download ${project_accession}
# mv ${project_accession}.tsv ${project_accession}.tsv.tmp
# cat <(head -1 ${project_accession}.tsv.tmp) <(egrep "SRR8749827|SRR8749828" ${project_accession}.tsv.tmp) > ${project_accession}.tsv
# # rm ${project_accession}.tsv.tmp
# gen_download_from_ebi.py ${project_accession}.tsv ${project_accession}.sh
# bash ${project_accession}.sh
# md5_of_ENAfastq_generate.py ${project_accession}.tsv ${project_accession}.md5
# md5sum -c ${project_accession}.md5
# cd ..

# bash ~/bin/RNAseq_SE_exon.sh 56hpf_heart_rep1 10 danRer11_2 SRR8749827.fastq.gz
# bash ~/bin/RNAseq_SE_exon.sh 56hpf_heart_rep2 10 danRer11_2 SRR8749828.fastq.gz



# ----- 17 Jan-2-2020 GSE142673 5dpf (Whole-larvae total RNA) -----

# project_accession=PRJNA597907
# cd 0_raw_data
# ena_meta_download ${project_accession}
# mv ${project_accession}.tsv ${project_accession}.tsv.tmp
# cat <(head -1 ${project_accession}.tsv.tmp) <(egrep "SRR10776672|SRR10776673|SRR10776674" ${project_accession}.tsv.tmp) > ${project_accession}.tsv
# # rm ${project_accession}.tsv.tmp
# gen_download_from_ebi.py ${project_accession}.tsv ${project_accession}.sh
# bash ${project_accession}.sh
# md5_of_ENAfastq_generate.py ${project_accession}.tsv ${project_accession}.md5
# md5sum -c ${project_accession}.md5
# cd ..

# bash ~/bin/RNAseq_SE_exon.sh 5dpf_rep3 10 danRer11_2 SRR10776672.fastq.gz
# bash ~/bin/RNAseq_SE_exon.sh 5dpf_rep4 10 danRer11_2 SRR10776673.fastq.gz
# bash ~/bin/RNAseq_SE_exon.sh 5dpf_rep5 10 danRer11_2 SRR10776674.fastq.gz



# --- 18 SRR5119935 SRR5119936 SRR5119937 SRR5119938 SRR5119939 SRR5119940 

# project_accession=PRJNA358007
# cd 0_raw_data
# ena_meta_download ${project_accession}
# mv ${project_accession}.tsv ${project_accession}.tsv.tmp
# cat <(head -1 ${project_accession}.tsv.tmp) <(egrep "SRR5119935|SRR5119936|SRR5119937|SRR5119938|SRR5119939|SRR5119940" ${project_accession}.tsv.tmp) > ${project_accession}.tsv
# # rm ${project_accession}.tsv.tmp
# gen_download_from_ebi.py ${project_accession}.tsv ${project_accession}.sh
# bash ${project_accession}.sh
# md5_of_ENAfastq_generate.py ${project_accession}.tsv ${project_accession}.md5
# md5sum -c ${project_accession}.md5
# cd ..

# bash ~/bin/RNAseq_SE_exon.sh           liver_male_rep1 10 danRer11_2 SRR5119935.fastq.gz &
# bash ~/bin/RNAseq_SE_exon.sh           liver_male_rep2 10 danRer11_2 SRR5119936.fastq.gz &
# bash ~/bin/RNAseq_SE_exon.sh           liver_male_rep3 10 danRer11_2 SRR5119937.fastq.gz &
# bash ~/bin/RNAseq_SE_exon.sh         liver_female_rep1 10 danRer11_2 SRR5119938.fastq.gz &
# bash ~/bin/RNAseq_SE_exon.sh         liver_female_rep2 10 danRer11_2 SRR5119939.fastq.gz &
# bash ~/bin/RNAseq_SE_exon.sh         liver_female_rep3 10 danRer11_2 SRR5119940.fastq.gz &



# --- 19 SRR9022957 SRR9022958 SRR9022959 

# project_accession=PRJNA541476
# cd 0_raw_data
# ena_meta_download ${project_accession}
# mv ${project_accession}.tsv ${project_accession}.tsv.tmp
# cat <(head -1 ${project_accession}.tsv.tmp) <(egrep "SRR9022957|SRR9022958|SRR9022959" ${project_accession}.tsv.tmp) > ${project_accession}.tsv
# # rm ${project_accession}.tsv.tmp
# gen_download_from_ebi.py ${project_accession}.tsv ${project_accession}.sh
# bash ${project_accession}.sh
# md5_of_ENAfastq_generate.py ${project_accession}.tsv ${project_accession}.md5
# md5sum -c ${project_accession}.md5
# cd ..

# bash ~/bin/RNAseq_PE_exon.sh                liver_rep1 10 danRer11_2 SRR9022957_1.fastq.gz SRR9022957_2.fastq.gz &
# bash ~/bin/RNAseq_PE_exon.sh                liver_rep2 10 danRer11_2 SRR9022958_1.fastq.gz SRR9022958_2.fastq.gz &
# bash ~/bin/RNAseq_PE_exon.sh                liver_rep3 10 danRer11_2 SRR9022959_1.fastq.gz SRR9022959_2.fastq.gz &



# ----- 20 Dec-30-2019 GSE136786 valve cell -----

# project_accession=PRJNA563669
# cd 0_raw_data
# ena_meta_download ${project_accession}
# mv ${project_accession}.tsv ${project_accession}.tsv.tmp
# cat <(head -1 ${project_accession}.tsv.tmp) <(egrep "SRR10060610|SRR10060611|SRR10060612" ${project_accession}.tsv.tmp) > ${project_accession}.tsv
# # rm ${project_accession}.tsv.tmp
# gen_download_from_ebi.py ${project_accession}.tsv ${project_accession}.sh
# bash ${project_accession}.sh
# md5_of_ENAfastq_generate.py ${project_accession}.tsv ${project_accession}.md5
# md5sum -c ${project_accession}.md5
# cd ..

# bash ~/bin/RNAseq_PE_exon.sh valve_rep1 10 danRer11_2 SRR10060610_1.fastq.gz SRR10060610_2.fastq.gz
# bash ~/bin/RNAseq_PE_exon.sh valve_rep2 10 danRer11_2 SRR10060611_1.fastq.gz SRR10060611_2.fastq.gz
# bash ~/bin/RNAseq_PE_exon.sh valve_rep3 10 danRer11_2 SRR10060612_1.fastq.gz SRR10060612_2.fastq.gz



# ----- 21 Dec-31-2019 GSE132141 retina Muller cells -----

# project_accession=PRJNA546018
# cd 0_raw_data
# ena_meta_download ${project_accession}
# mv ${project_accession}.tsv ${project_accession}.tsv.tmp
# cat <(head -1 ${project_accession}.tsv.tmp) <(egrep "SRR9189638|SRR9189639|SRR9189640" ${project_accession}.tsv.tmp) > ${project_accession}.tsv
# # rm ${project_accession}.tsv.tmp
# gen_download_from_ebi.py ${project_accession}.tsv ${project_accession}.sh
# bash ${project_accession}.sh
# md5_of_ENAfastq_generate.py ${project_accession}.tsv ${project_accession}.md5
# md5sum -c ${project_accession}.md5
# cd ..

# bash ~/bin/RNAseq_SE_exon.sh retina_muller_rep1 10 danRer11_2 SRR9189638.fastq.gz
# bash ~/bin/RNAseq_SE_exon.sh retina_muller_rep2 10 danRer11_2 SRR9189639.fastq.gz
# bash ~/bin/RNAseq_SE_exon.sh retina_muller_rep3 10 danRer11_2 SRR9189640.fastq.gz



# ----- 22 Jan-2-2020 GSE128511 5/6 mpf kidney -----

# project_accession=PRJNA485080
# cd 0_raw_data
# ena_meta_download ${project_accession}
# mv ${project_accession}.tsv ${project_accession}.tsv.tmp
# cat <(head -1 ${project_accession}.tsv.tmp) <(egrep "SRR7659031|SRR7659032|SRR7659033|SRR7659034" ${project_accession}.tsv.tmp) > ${project_accession}.tsv
# # rm ${project_accession}.tsv.tmp
# gen_download_from_ebi.py ${project_accession}.tsv ${project_accession}.sh
# bash ${project_accession}.sh
# md5_of_ENAfastq_generate.py ${project_accession}.tsv ${project_accession}.md5
# md5sum -c ${project_accession}.md5
# cd ..


# bash ~/bin/RNAseq_PE_exon.sh kidney_rep1 10 danRer11_2 SRR7659031_1.fastq.gz SRR7659031_2.fastq.gz
# bash ~/bin/RNAseq_PE_exon.sh kidney_rep2 10 danRer11_2 SRR7659032_1.fastq.gz SRR7659032_2.fastq.gz
# bash ~/bin/RNAseq_PE_exon.sh kidney_rep3 10 danRer11_2 SRR7659033_1.fastq.gz SRR7659033_2.fastq.gz
# bash ~/bin/RNAseq_PE_exon.sh kidney_rep4 10 danRer11_2 SRR7659034_1.fastq.gz SRR7659034_2.fastq.gz



# ----- 23 Jan-3-2020 GSE132927 kidney HSC gata2a/runx1 FACS -----

# project_accession=PRJNA549478
# cd 0_raw_data
# ena_meta_download ${project_accession}
# mv ${project_accession}.tsv ${project_accession}.tsv.tmp
# cat <(head -1 ${project_accession}.tsv.tmp) <(egrep "SRR9320538|SRR9320539|SRR9320540" ${project_accession}.tsv.tmp) > ${project_accession}.tsv
# # rm ${project_accession}.tsv.tmp
# gen_download_from_ebi.py ${project_accession}.tsv ${project_accession}.sh
# bash ${project_accession}.sh
# md5_of_ENAfastq_generate.py ${project_accession}.tsv ${project_accession}.md5
# md5sum -c ${project_accession}.md5
# cd ..

# bash ~/bin/RNAseq_PE_exon.sh kidney_HSC_gata2a_p_runx1_p 10 danRer11_2 SRR9320538_1.fastq.gz SRR9320538_2.fastq.gz
# bash ~/bin/RNAseq_PE_exon.sh kidney_HSC_gata2a_n_runx1_p 10 danRer11_2 SRR9320539_1.fastq.gz SRR9320539_2.fastq.gz
# bash ~/bin/RNAseq_PE_exon.sh kidney_HSC_gata2a_p_runx1_n 10 danRer11_2 SRR9320540_1.fastq.gz SRR9320540_2.fastq.gz



# ----- 24 Jan-3-2020 GSE119718 4dpf/5dpf vascular muscle acta2/foxc1b/kdrl FACS -----

# project_accession=PRJNA490132
# cd 0_raw_data
# ena_meta_download ${project_accession}
# mv ${project_accession}.tsv ${project_accession}.tsv.tmp
# cat <(head -1 ${project_accession}.tsv.tmp) <(egrep "SRR78137*" ${project_accession}.tsv.tmp) > ${project_accession}.tsv
# # rm ${project_accession}.tsv.tmp
# gen_download_from_ebi.py ${project_accession}.tsv ${project_accession}.sh
# bash ${project_accession}.sh
# md5_of_ENAfastq_generate.py ${project_accession}.tsv ${project_accession}.md5
# md5sum -c ${project_accession}.md5
# cd ..

# bash ~/bin/RNAseq_PE_exon.sh          4dpf_vascular_muscle_acta2_n_rep1 20 danRer11_2 SRR7813741_1.fastq.gz SRR7813741_2.fastq.gz
# bash ~/bin/RNAseq_PE_exon.sh          4dpf_vascular_muscle_acta2_n_rep2 20 danRer11_2 SRR7813742_1.fastq.gz SRR7813742_2.fastq.gz
# bash ~/bin/RNAseq_PE_exon.sh          4dpf_vascular_muscle_acta2_n_rep3 20 danRer11_2 SRR7813743_1.fastq.gz SRR7813743_2.fastq.gz
bash ~/bin/RNAseq_PE_exon.sh          4dpf_vascular_muscle_acta2_p_rep1 20 danRer11_2 SRR7813744_1.fastq.gz SRR7813744_2.fastq.gz
# bash ~/bin/RNAseq_PE_exon.sh          4dpf_vascular_muscle_acta2_p_rep2 20 danRer11_2 SRR7813745_1.fastq.gz SRR7813745_2.fastq.gz
# bash ~/bin/RNAseq_PE_exon.sh          4dpf_vascular_muscle_acta2_p_rep3 20 danRer11_2 SRR7813746_1.fastq.gz SRR7813746_2.fastq.gz
# bash ~/bin/RNAseq_PE_exon.sh 4dpf_vascular_muscle_acta2_n_fosc1b_n_rep1 20 danRer11_2 SRR7813747_1.fastq.gz SRR7813747_2.fastq.gz
# bash ~/bin/RNAseq_PE_exon.sh 4dpf_vascular_muscle_acta2_n_fosc1b_n_rep2 20 danRer11_2 SRR7813748_1.fastq.gz SRR7813748_2.fastq.gz
# bash ~/bin/RNAseq_PE_exon.sh 4dpf_vascular_muscle_acta2_n_fosc1b_n_rep3 20 danRer11_2 SRR7813749_1.fastq.gz SRR7813749_2.fastq.gz
# bash ~/bin/RNAseq_PE_exon.sh 4dpf_vascular_muscle_acta2_p_fosc1b_p_rep1 20 danRer11_2 SRR7813750_1.fastq.gz SRR7813750_2.fastq.gz
# bash ~/bin/RNAseq_PE_exon.sh 4dpf_vascular_muscle_acta2_p_fosc1b_p_rep2 20 danRer11_2 SRR7813751_1.fastq.gz SRR7813751_2.fastq.gz
# bash ~/bin/RNAseq_PE_exon.sh           5dpf_vascular_muscle_kdrl_n_rep1 20 danRer11_2 SRR7813752_1.fastq.gz SRR7813752_2.fastq.gz
# bash ~/bin/RNAseq_PE_exon.sh           5dpf_vascular_muscle_kdrl_n_rep2 20 danRer11_2 SRR7813753_1.fastq.gz SRR7813753_2.fastq.gz
# bash ~/bin/RNAseq_PE_exon.sh           5dpf_vascular_muscle_kdrl_n_rep3 20 danRer11_2 SRR7813754_1.fastq.gz SRR7813754_2.fastq.gz
# bash ~/bin/RNAseq_PE_exon.sh           5dpf_vascular_muscle_kdrl_p_rep1 20 danRer11_2 SRR7813755_1.fastq.gz SRR7813755_2.fastq.gz
# bash ~/bin/RNAseq_PE_exon.sh           5dpf_vascular_muscle_kdrl_p_rep2 20 danRer11_2 SRR7813756_1.fastq.gz SRR7813756_2.fastq.gz
# bash ~/bin/RNAseq_PE_exon.sh           5dpf_vascular_muscle_kdrl_p_rep3 20 danRer11_2 SRR7813757_1.fastq.gz SRR7813757_2.fastq.gz




# ----- 09 Jan-6-2020 GSE135237 36hpf/72hpf neural crest cells -----

# project_accession=PRJNA558085
# cd 0_raw_data
# ena_meta_download ${project_accession}
# mv ${project_accession}.tsv ${project_accession}.tsv.tmp
# cat <(head -1 ${project_accession}.tsv.tmp) <(egrep "SRR987991[345678]" ${project_accession}.tsv.tmp) > ${project_accession}.tsv
# # rm ${project_accession}.tsv.tmp
# gen_download_from_ebi.py ${project_accession}.tsv ${project_accession}.sh
# bash ${project_accession}.sh
# md5_of_ENAfastq_generate.py ${project_accession}.tsv ${project_accession}.md5
# md5sum -c ${project_accession}.md5
# cd ..

# bash ~/bin/RNAseq_PE_exon.sh 72hpf_neural_crest_rep1 20 danRer11_2 SRR9879916_1.fastq.gz SRR9879916_2.fastq.gz
# bash ~/bin/RNAseq_PE_exon.sh 72hpf_neural_crest_rep2 20 danRer11_2 SRR9879917_1.fastq.gz SRR9879917_2.fastq.gz
# bash ~/bin/RNAseq_PE_exon.sh 72hpf_neural_crest_rep3 20 danRer11_2 SRR9879918_1.fastq.gz SRR9879918_2.fastq.gz



# ----- 25 Jan-7-2020 GSE133130 heart: ventricle -----

# project_accession=PRJNA550048
# cd 0_raw_data
# ena_meta_download ${project_accession}
# mv ${project_accession}.tsv ${project_accession}.tsv.tmp
# cat <(head -1 ${project_accession}.tsv.tmp) <(egrep "SRR933640[56789]" ${project_accession}.tsv.tmp) > ${project_accession}.tsv
# # rm ${project_accession}.tsv.tmp
# gen_download_from_ebi.py ${project_accession}.tsv ${project_accession}.sh
# bash ${project_accession}.sh
# md5_of_ENAfastq_generate.py ${project_accession}.tsv ${project_accession}.md5
# md5sum -c ${project_accession}.md5
# cd ..

bash ~/bin/RNAseq_PE_exon.sh ventricle_rep1 20 danRer11_2 SRR9336405_1.fastq.gz SRR9336405_2.fastq.gz
# bash ~/bin/RNAseq_PE_exon.sh ventricle_rep2 20 danRer11_2 SRR9336406_1.fastq.gz SRR9336406_2.fastq.gz
# bash ~/bin/RNAseq_PE_exon.sh ventricle_rep3 20 danRer11_2 SRR9336407_1.fastq.gz SRR9336407_2.fastq.gz
# bash ~/bin/RNAseq_PE_exon.sh ventricle_rep4 20 danRer11_2 SRR9336408_1.fastq.gz SRR9336408_2.fastq.gz
# bash ~/bin/RNAseq_PE_exon.sh ventricle_rep5 20 danRer11_2 SRR9336409_1.fastq.gz SRR9336409_2.fastq.gz



# ----- 26 Jan-8-2020 GSE124970 intestinal epithelial cells -----

# project_accession=PRJNA514721
# cd 0_raw_data
# ena_meta_download ${project_accession}
# mv ${project_accession}.tsv ${project_accession}.tsv.tmp
# cat <(head -1 ${project_accession}.tsv.tmp) <(egrep "SRR843510[456789]" ${project_accession}.tsv.tmp) > ${project_accession}.tsv
# # rm ${project_accession}.tsv.tmp
# gen_download_from_ebi.py ${project_accession}.tsv ${project_accession}.sh
# bash ${project_accession}.sh
# md5_of_ENAfastq_generate.py ${project_accession}.tsv ${project_accession}.md5
# md5sum -c ${project_accession}.md5
# cd ..
# added
# bash ~/bin/RNAseq_SE_exon.sh 6dpf_IEC_rep1 20 danRer11_2 SRR8435104.fastq.gz
# bash ~/bin/RNAseq_SE_exon.sh 6dpf_IEC_rep2 20 danRer11_2 SRR8435105.fastq.gz
# bash ~/bin/RNAseq_SE_exon.sh 6dpf_IEC_rep3 20 danRer11_2 SRR8435106.fastq.gz
# bash ~/bin/RNAseq_SE_exon.sh 6dpf_LRE_rep1 20 danRer11_2 SRR8435107.fastq.gz
# bash ~/bin/RNAseq_SE_exon.sh 6dpf_LRE_rep2 20 danRer11_2 SRR8435108.fastq.gz
# bash ~/bin/RNAseq_SE_exon.sh 6dpf_LRE_rep3 20 danRer11_2 SRR8435109.fastq.gz



# ----- 27 Jan-9-2020 GSE134345 5mpf ovary -----

# project_accession=PRJNA554813
# cd 0_raw_data
# ena_meta_download ${project_accession}
# mv ${project_accession}.tsv ${project_accession}.tsv.tmp
# cat <(head -1 ${project_accession}.tsv.tmp) <(egrep "SRR9693179" ${project_accession}.tsv.tmp) > ${project_accession}.tsv
# # rm ${project_accession}.tsv.tmp
# gen_download_from_ebi.py ${project_accession}.tsv ${project_accession}.sh
# bash ${project_accession}.sh
# md5_of_ENAfastq_generate.py ${project_accession}.tsv ${project_accession}.md5
# md5sum -c ${project_accession}.md5
# cd ..

# bash ~/bin/RNAseq_PE_exon.sh 5mpf_ovary_rep1 20 danRer11_2 SRR9693179_1.fastq.gz SRR9693179_2.fastq.gz



# ----- 10 Jan-9-2020 GSE132304 20ss/52hpf/72hpf skin -----

# project_accession=PRJNA547573
# cd 0_raw_data
# ena_meta_download ${project_accession}
# mv ${project_accession}.tsv ${project_accession}.tsv.tmp
# cat <(head -1 ${project_accession}.tsv.tmp) <(egrep "SRR921148[4589]|SRR921149[123478]|SRR921150[1234]" ${project_accession}.tsv.tmp) > ${project_accession}.tsv
# # rm ${project_accession}.tsv.tmp
# gen_download_from_ebi.py ${project_accession}.tsv ${project_accession}.sh
# bash ${project_accession}.sh
# md5_of_ENAfastq_generate.py ${project_accession}.tsv ${project_accession}.md5
# md5sum -c ${project_accession}.md5
# cd ..

# bash ~/bin/RNAseq_SE_exon.sh  52hpf_allskin_rep1 20 danRer11_2 SRR9211488.fastq.gz
# bash ~/bin/RNAseq_SE_exon.sh  52hpf_allskin_rep2 20 danRer11_2 SRR9211489.fastq.gz
# bash ~/bin/RNAseq_SE_exon.sh    52hpf_basal_rep1 20 danRer11_2 SRR9211491.fastq.gz
# bash ~/bin/RNAseq_SE_exon.sh    52hpf_basal_rep2 20 danRer11_2 SRR9211492.fastq.gz
# bash ~/bin/RNAseq_SE_exon.sh 52hpf_periderm_rep1 20 danRer11_2 SRR9211493.fastq.gz
# bash ~/bin/RNAseq_SE_exon.sh 52hpf_periderm_rep2 20 danRer11_2 SRR9211494.fastq.gz
# bash ~/bin/RNAseq_SE_exon.sh  72hpf_allskin_rep1 20 danRer11_2 SRR9211497.fastq.gz
# bash ~/bin/RNAseq_SE_exon.sh  72hpf_allskin_rep2 20 danRer11_2 SRR9211498.fastq.gz
# bash ~/bin/RNAseq_SE_exon.sh    72hpf_basal_rep1 20 danRer11_2 SRR9211501.fastq.gz
# bash ~/bin/RNAseq_SE_exon.sh    72hpf_basal_rep2 20 danRer11_2 SRR9211502.fastq.gz
# bash ~/bin/RNAseq_SE_exon.sh 72hpf_periderm_rep1 20 danRer11_2 SRR9211503.fastq.gz
# bash ~/bin/RNAseq_SE_exon.sh 72hpf_periderm_rep2 20 danRer11_2 SRR9211504.fastq.gz



# ----- 28 Jan-10-2020 GSE135823 3mpf heart -----

# project_accession=PRJNA560203
# cd 0_raw_data
# ena_meta_download ${project_accession}
# mv ${project_accession}.tsv ${project_accession}.tsv.tmp
# cat <(head -1 ${project_accession}.tsv.tmp) <(egrep "SRR996639[456]" ${project_accession}.tsv.tmp) > ${project_accession}.tsv
# # rm ${project_accession}.tsv.tmp
# gen_download_from_ebi.py ${project_accession}.tsv ${project_accession}.sh
# bash ${project_accession}.sh
# md5_of_ENAfastq_generate.py ${project_accession}.tsv ${project_accession}.md5
# md5sum -c ${project_accession}.md5
# cd ..

# bash ~/bin/RNAseq_PE_exon.sh 3mpf_heart_rep1 20 danRer11_2 SRR9966394_1.fastq.gz,SRR9966395_1.fastq.gz,SRR9966396_1.fastq.gz SRR9966394_2.fastq.gz,SRR9966395_2.fastq.gz,SRR9966396_2.fastq.gz




# ----- 29 Feb-9-2020 2mpf liver -----

# project_accession=PRJNA555341
# cd 0_raw_data
# ena_meta_download ${project_accession}
# mv ${project_accession}.tsv ${project_accession}.tsv.tmp
# cat <(head -1 ${project_accession}.tsv.tmp) <(egrep "SRR970799[01]" ${project_accession}.tsv.tmp) > ${project_accession}.tsv
# # rm ${project_accession}.tsv.tmp
# gen_download_from_ebi.py ${project_accession}.tsv ${project_accession}.sh
# bash ${project_accession}.sh
# md5_of_ENAfastq_generate.py ${project_accession}.tsv ${project_accession}.md5
# md5sum -c ${project_accession}.md5
# cd ..

# bash ~/bin/RNAseq_PE_exon.sh 2mpf_liver_rep1 20 danRer11_2 SRR9707990_1.fastq.gz SRR9707990_2.fastq.gz
# bash ~/bin/RNAseq_PE_exon.sh 2mpf_liver_rep2 20 danRer11_2 SRR9707991_1.fastq.gz SRR9707991_2.fastq.gz



# ----- 30 Feb-9-2020 adult testis -----

# project_accession=PRJNA479503
# cd 0_raw_data
# ena_meta_download ${project_accession}
# mv ${project_accession}.tsv ${project_accession}.tsv.tmp
# cat <(head -1 ${project_accession}.tsv.tmp) <(egrep "SRR746867[4-9]|SRR746868[0-3]" ${project_accession}.tsv.tmp) > ${project_accession}.tsv
# # rm ${project_accession}.tsv.tmp
# gen_download_from_ebi.py ${project_accession}.tsv ${project_accession}.sh
# bash ${project_accession}.sh
# md5_of_ENAfastq_generate.py ${project_accession}.tsv ${project_accession}.md5
# md5sum -c ${project_accession}.md5
# cd ..

# bash ~/bin/RNAseq_SE_exon.sh testis_rep1 20 danRer11_2 SRR7468674.fastq.gz,SRR7468675.fastq.gz
# bash ~/bin/RNAseq_SE_exon.sh testis_rep2 20 danRer11_2 SRR7468676.fastq.gz,SRR7468677.fastq.gz
# bash ~/bin/RNAseq_SE_exon.sh testis_rep3 20 danRer11_2 SRR7468678.fastq.gz,SRR7468679.fastq.gz
# bash ~/bin/RNAseq_SE_exon.sh testis_rep4 20 danRer11_2 SRR7468680.fastq.gz,SRR7468681.fastq.gz
# bash ~/bin/RNAseq_SE_exon.sh testis_rep5 20 danRer11_2 SRR7468682.fastq.gz,SRR7468683.fastq.gz



# ----- 31 Feb-18-2020 4dpf podocyte/endothelium -----

# project_accession=PRJNA483985
# cd 0_raw_data
# ena_meta_download ${project_accession}
# mv ${project_accession}.tsv ${project_accession}.tsv.tmp
# cat <(head -1 ${project_accession}.tsv.tmp) <(egrep "SRR763347[7-9]|SRR763348[6-8]" ${project_accession}.tsv.tmp) > ${project_accession}.tsv
# # rm ${project_accession}.tsv.tmp
# gen_download_from_ebi.py ${project_accession}.tsv ${project_accession}.sh
# bash ${project_accession}.sh
# md5_of_ENAfastq_generate.py ${project_accession}.tsv ${project_accession}.md5
# md5sum -c ${project_accession}.md5
# cd ..

# added
# bash ~/bin/RNAseq_SE_exon.sh   4dpf_podocytes_rep1 20 danRer11_2 SRR7633477.fastq.gz
# bash ~/bin/RNAseq_SE_exon.sh   4dpf_podocytes_rep2 20 danRer11_2 SRR7633478.fastq.gz
# bash ~/bin/RNAseq_SE_exon.sh   4dpf_podocytes_rep3 20 danRer11_2 SRR7633479.fastq.gz
# bash ~/bin/RNAseq_SE_exon.sh 4dpf_endothelial_rep1 20 danRer11_2 SRR7633486.fastq.gz
# bash ~/bin/RNAseq_SE_exon.sh 4dpf_endothelial_rep2 20 danRer11_2 SRR7633487.fastq.gz
# bash ~/bin/RNAseq_SE_exon.sh 4dpf_endothelial_rep3 20 danRer11_2 SRR7633488.fastq.gz



# ----- 32 Feb-19-2020 3dpf kidney -----

# project_accession=PRJNA378487
# cd 0_raw_data
# ena_meta_download ${project_accession}
# mv ${project_accession}.tsv ${project_accession}.tsv.tmp
# cat <(head -1 ${project_accession}.tsv.tmp) <(egrep "SRR532050[0-2]" ${project_accession}.tsv.tmp) > ${project_accession}.tsv
# # rm ${project_accession}.tsv.tmp
# gen_download_from_ebi.py ${project_accession}.tsv ${project_accession}.sh
# bash ${project_accession}.sh
# md5_of_ENAfastq_generate.py ${project_accession}.tsv ${project_accession}.md5
# md5sum -c ${project_accession}.md5
# cd ..

# added
# bash ~/bin/RNAseq_PE_exon.sh 3dpf_kidney_rep1 20 danRer11_2 SRR5320500_1.fastq.gz SRR5320500_2.fastq.gz
# bash ~/bin/RNAseq_PE_exon.sh 3dpf_kidney_rep2 20 danRer11_2 SRR5320501_1.fastq.gz SRR5320501_2.fastq.gz
# bash ~/bin/RNAseq_PE_exon.sh 3dpf_kidney_rep3 20 danRer11_2 SRR5320502_1.fastq.gz SRR5320502_2.fastq.gz



# ----- 33 Feb-20-2020 adult epidermis cLCs(conventional Langerhans cells)/Keratinocytes/MLCs/Neutrophils/T -----

# project_accession=PRJNA523219
# cd 0_raw_data
# ena_meta_download ${project_accession}
# mv ${project_accession}.tsv ${project_accession}.tsv.tmp
# cat <(head -1 ${project_accession}.tsv.tmp) <(egrep "SRR859173[6-9]|SRR859174[0-9]|SRR859175[0-2]" ${project_accession}.tsv.tmp) > ${project_accession}.tsv
# # rm ${project_accession}.tsv.tmp
# gen_download_from_ebi.py ${project_accession}.tsv ${project_accession}.sh
# bash ${project_accession}.sh
# md5_of_ENAfastq_generate.py ${project_accession}.tsv ${project_accession}.md5
# md5sum -c ${project_accession}.md5
# cd ..

# added
# bash ~/bin/RNAseq_PE_exon.sh          epidermis_cLCs_rep1 20 danRer11_2 SRR8591736_1.fastq.gz SRR8591736_2.fastq.gz
# bash ~/bin/RNAseq_PE_exon.sh          epidermis_cLCs_rep2 20 danRer11_2 SRR8591737_1.fastq.gz SRR8591737_2.fastq.gz
# bash ~/bin/RNAseq_PE_exon.sh          epidermis_cLCs_rep3 20 danRer11_2 SRR8591738_1.fastq.gz SRR8591738_2.fastq.gz
# bash ~/bin/RNAseq_PE_exon.sh          epidermis_cLCs_rep4 20 danRer11_2 SRR8591739_1.fastq.gz SRR8591739_2.fastq.gz
# bash ~/bin/RNAseq_PE_exon.sh epidermis_Keratinocytes_rep1 20 danRer11_2 SRR8591740_1.fastq.gz SRR8591740_2.fastq.gz
# bash ~/bin/RNAseq_PE_exon.sh epidermis_Keratinocytes_rep2 20 danRer11_2 SRR8591741_1.fastq.gz SRR8591741_2.fastq.gz
# bash ~/bin/RNAseq_PE_exon.sh epidermis_Keratinocytes_rep3 20 danRer11_2 SRR8591742_1.fastq.gz SRR8591742_2.fastq.gz
# bash ~/bin/RNAseq_PE_exon.sh          epidermis_MLCs_rep1 20 danRer11_2 SRR8591743_1.fastq.gz SRR8591743_2.fastq.gz
# bash ~/bin/RNAseq_PE_exon.sh          epidermis_MLCs_rep2 20 danRer11_2 SRR8591744_1.fastq.gz SRR8591744_2.fastq.gz
# bash ~/bin/RNAseq_PE_exon.sh          epidermis_MLCs_rep3 20 danRer11_2 SRR8591745_1.fastq.gz SRR8591745_2.fastq.gz
# bash ~/bin/RNAseq_PE_exon.sh          epidermis_MLCs_rep4 20 danRer11_2 SRR8591746_1.fastq.gz SRR8591746_2.fastq.gz
# bash ~/bin/RNAseq_PE_exon.sh   epidermis_Neutrophils_rep1 20 danRer11_2 SRR8591747_1.fastq.gz SRR8591747_2.fastq.gz
# bash ~/bin/RNAseq_PE_exon.sh   epidermis_Neutrophils_rep2 20 danRer11_2 SRR8591748_1.fastq.gz SRR8591748_2.fastq.gz
bash ~/bin/RNAseq_PE_exon.sh   epidermis_Neutrophils_rep3 20 danRer11_2 SRR8591749_1.fastq.gz SRR8591749_2.fastq.gz
# bash ~/bin/RNAseq_PE_exon.sh        epidermis_T_cell_rep1 20 danRer11_2 SRR8591750_1.fastq.gz SRR8591750_2.fastq.gz
# bash ~/bin/RNAseq_PE_exon.sh        epidermis_T_cell_rep2 20 danRer11_2 SRR8591751_1.fastq.gz SRR8591751_2.fastq.gz
# bash ~/bin/RNAseq_PE_exon.sh        epidermis_T_cell_rep3 20 danRer11_2 SRR8591752_1.fastq.gz SRR8591752_2.fastq.gz



# ----- 34 Feb-28-2020 ovray -----

# project_accession=PRJNA476105
# cd 0_raw_data
# ena_meta_download ${project_accession}
# mv ${project_accession}.tsv ${project_accession}.tsv.tmp
# cat <(head -1 ${project_accession}.tsv.tmp) <(egrep "SRR7341815" ${project_accession}.tsv.tmp) > ${project_accession}.tsv
# # rm ${project_accession}.tsv.tmp
# gen_download_from_ebi.py ${project_accession}.tsv ${project_accession}.sh
# bash ${project_accession}.sh
# md5_of_ENAfastq_generate.py ${project_accession}.tsv ${project_accession}.md5
# md5sum -c ${project_accession}.md5
# cd ..

# added
# bash ~/bin/RNAseq_SE_exon.sh ovary_rep2 20 danRer11_2 SRR7341815.fastq.gz



# ----- 35 Feb-28-2020 muscle -----

# project_accession=PRJNA436713
# cd 0_raw_data
# ena_meta_download ${project_accession}
# mv ${project_accession}.tsv ${project_accession}.tsv.tmp
# cat <(head -1 ${project_accession}.tsv.tmp) <(egrep "SRR679877[5-7]" ${project_accession}.tsv.tmp) > ${project_accession}.tsv
# # rm ${project_accession}.tsv.tmp
# gen_download_from_ebi.py ${project_accession}.tsv ${project_accession}.sh
# bash ${project_accession}.sh
# md5_of_ENAfastq_generate.py ${project_accession}.tsv ${project_accession}.md5
# md5sum -c ${project_accession}.md5
# cd ..

# added
# bash ~/bin/RNAseq_PE_exon.sh muscle_rep1 20 danRer11_2 SRR6798775_1.fastq.gz SRR6798775_2.fastq.gz
# bash ~/bin/RNAseq_PE_exon.sh muscle_rep2 20 danRer11_2 SRR6798776_1.fastq.gz SRR6798776_2.fastq.gz
# bash ~/bin/RNAseq_PE_exon.sh muscle_rep3 20 danRer11_2 SRR6798777_1.fastq.gz SRR6798777_2.fastq.gz



# ----- 36 Mar-1-2020 beta_cell -----

# project_accession=PRJNA515911
# cd 0_raw_data
# ena_meta_download ${project_accession}
# mv ${project_accession}.tsv ${project_accession}.tsv.tmp
# cat <(head -1 ${project_accession}.tsv.tmp) <(egrep "SRR845690[67]" ${project_accession}.tsv.tmp) > ${project_accession}.tsv
# # rm ${project_accession}.tsv.tmp
# gen_download_from_ebi.py ${project_accession}.tsv ${project_accession}.sh
# bash ${project_accession}.sh
# md5_of_ENAfastq_generate.py ${project_accession}.tsv ${project_accession}.md5
# md5sum -c ${project_accession}.md5
# cd ..

# added
# bash ~/bin/RNAseq_PE_exon.sh 5dpf_beta_rep1 20 danRer11_2 SRR8456906_1.fastq.gz SRR8456906_2.fastq.gz
# bash ~/bin/RNAseq_PE_exon.sh 5dpf_beta_rep2 20 danRer11_2 SRR8456907_1.fastq.gz SRR8456907_2.fastq.gz

