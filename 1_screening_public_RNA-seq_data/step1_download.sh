#!/bin/bash

##### re-download public data


### ----- embryo -----

# 01 embryo & tissue
cd ~/maternal_loading/2.public_data
download_raw_seq.py -p PRJNA189430 -f 'SRR1049814|SRR372787|SRR372788|SRR372789|SRR372790|SRR372791|SRR372792|SRR372793|SRR372794|SRR372795|SRR372796|SRR372797|SRR372798|SRR372799|SRR372800|SRR372801|SRR372802|SRR372803' -o 0_raw_data
download_raw_seq.py -p PRJNA154389 -f 'SRR1049814|SRR372787|SRR372788|SRR372789|SRR372790|SRR372791|SRR372792|SRR372793|SRR372794|SRR372795|SRR372796|SRR372797|SRR372798|SRR372799|SRR372800|SRR372801|SRR372802|SRR372803' -o 0_raw_data
cd 0_raw_data
# embryo1
# bash PRJNA189430.sh
# /mnt/Storage/home/wangyiman/maternal_loading/2.public_data/0_raw_data/SRR1049814_2.fastq.gz: FAILED
# egrep SRR1049814_2 PRJNA189430.sh | grep wget | cut -f 11-13 -d ' ' > PRJNA189430_reDownload.sh
# bash PRJNA189430_reDownload.sh
# mv SRR1049814_2.fastq.gz.1 SRR1049814_2.fastq.gz 
# md5sum -c PRJNA189430.md5

# embryo2
# bash PRJNA154389.sh

# /mnt/Storage/home/wangyiman/maternal_loading/2.public_data/0_raw_data/SRR372790_2.fastq.gz: FAILED
# /mnt/Storage/home/wangyiman/maternal_loading/2.public_data/0_raw_data/SRR372792_2.fastq.gz: FAILED
# /mnt/Storage/home/wangyiman/maternal_loading/2.public_data/0_raw_data/SRR372795_1.fastq.gz: FAILED
# /mnt/Storage/home/wangyiman/maternal_loading/2.public_data/0_raw_data/SRR372795_2.fastq.gz: FAILED
# /mnt/Storage/home/wangyiman/maternal_loading/2.public_data/0_raw_data/SRR372798_1.fastq.gz: FAILED
# /mnt/Storage/home/wangyiman/maternal_loading/2.public_data/0_raw_data/SRR372798_2.fastq.gz: FAILED
# /mnt/Storage/home/wangyiman/maternal_loading/2.public_data/0_raw_data/SRR372799_2.fastq.gz: FAILED

# egrep 'SRR372790_2|SRR372792_2|SRR372795_1|SRR372795_2|SRR372798_1|SRR372798_2|SRR372799_2' PRJNA154389.sh | grep wget | cut -f 11-13 -d ' ' > PRJNA154389_reDownload.sh
# bash PRJNA154389_reDownload.sh
# md5sum -c PRJNA154389.md5 # failed again and again with "wget -c(continue)"

# wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR372/SRR372790/SRR372790_2.fastq.gz
# wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR372/SRR372792/SRR372792_2.fastq.gz
# wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR372/SRR372795/SRR372795_1.fastq.gz
# wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR372/SRR372795/SRR372795_2.fastq.gz
# wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR372/SRR372798/SRR372798_1.fastq.gz
# wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR372/SRR372798/SRR372798_2.fastq.gz
# wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR372/SRR372799/SRR372799_2.fastq.gz

# mv SRR372790_2.fastq.gz.1 SRR372790_2.fastq.gz
# mv SRR372792_2.fastq.gz.1 SRR372792_2.fastq.gz
# mv SRR372795_1.fastq.gz.1 SRR372795_1.fastq.gz
# mv SRR372795_2.fastq.gz.1 SRR372795_2.fastq.gz
# mv SRR372798_1.fastq.gz.1 SRR372798_1.fastq.gz
# mv SRR372798_2.fastq.gz.1 SRR372798_2.fastq.gz
# mv SRR372799_2.fastq.gz.1 SRR372799_2.fastq.gz

# md5sum -c PRJNA154389.md5

# 02 embryo1
# bash PRJNA473799.sh
# md5sum -c PRJNA473799.md5

# 03 embryo2
# bash PRJNA245102.sh
# md5sum -c PRJNA245102.md5

# 04 embryo2
# bash PRJEB12982.sh
# md5sum -c PRJEB12982.md5

# 05 embryo1
# bash PRJNA507426.sh
# md5sum -c PRJNA507426.md5

# 06 embryo1 & tissue
# bash PRJNA493632.sh
# md5sum -c PRJNA493632.md5

# 07 embryo2
# bash PRJNA597725.sh
# md5sum -c PRJNA597725.md5

# 08 embryo1
# bash PRJNA488043.sh
# md5sum -c PRJNA488043.md5

# 09 embryo2
# bash PRJNA558085.sh
# md5sum -c PRJNA558085.md5

# 10 embryo1 & tissue
# bash PRJNA547573.sh
# md5sum -c PRJNA547573.md5

# SRR9211494.fastq.gz: FAILED
# SRR9211497.fastq.gz: FAILED
# SRR9211503.fastq.gz: FAILED

# mv SRR9211494.fastq.gz.1 SRR9211494.fastq.gz
# mv SRR9211497.fastq.gz.1 SRR9211497.fastq.gz
# mv SRR9211503.fastq.gz.1 SRR9211503.fastq.gz


# 11 embryo2
# bash PRJNA493827.sh
# md5sum -c PRJNA493827.md5

# SRR7942605_1.fastq.gz: FAILED
# SRR7942605_2.fastq.gz: FAILED
# SRR7942606_1.fastq.gz: FAILED
# SRR7942608_1.fastq.gz: FAILED
# SRR7942609_1.fastq.gz: FAILED
# SRR7942609_2.fastq.gz: FAILED
# SRR7942610_1.fastq.gz: FAILED
# SRR7942611_1.fastq.gz: FAILED
# SRR7942612_1.fastq.gz: FAILED
# SRR7942612_2.fastq.gz: FAILED

# egrep 'SRR7942605_1|SRR7942605_2|SRR7942606_1|SRR7942608_1|SRR7942609_1|SRR7942609_2|SRR7942610_1|SRR7942611_1|SRR7942612_1|SRR7942612_2' PRJNA493827.sh | grep ascp | cut -f 8-16 -d ' ' > PRJNA493827_reDownload.sh
# egrep 'SRR7942605_1|SRR7942605_2|SRR7942606_1|SRR7942608_1|SRR7942609_1|SRR7942609_2|SRR7942610_1|SRR7942611_1|SRR7942612_1|SRR7942612_2' PRJNA493827.sh | grep wget | cut -f 8-9 -d ' ' > PRJNA493827_reDownload.sh
# bash PRJNA493827_reDownload.sh

# mv SRR7942605_1.fastq.gz.1 SRR7942605_1.fastq.gz
# mv SRR7942605_2.fastq.gz.1 SRR7942605_2.fastq.gz
# mv SRR7942606_1.fastq.gz.1 SRR7942606_1.fastq.gz
# mv SRR7942608_1.fastq.gz.1 SRR7942608_1.fastq.gz
# mv SRR7942609_1.fastq.gz.1 SRR7942609_1.fastq.gz
# mv SRR7942609_2.fastq.gz.1 SRR7942609_2.fastq.gz
# mv SRR7942610_1.fastq.gz.1 SRR7942610_1.fastq.gz
# mv SRR7942611_1.fastq.gz.1 SRR7942611_1.fastq.gz
# mv SRR7942612_1.fastq.gz.1 SRR7942612_1.fastq.gz
# mv SRR7942612_2.fastq.gz.1 SRR7942612_2.fastq.gz
# md5sum -c PRJNA493827.md5


# 12 embryo1
# bash PRJNA529645.sh
# md5sum -c PRJNA529645.md5

# SRR8799027_1.fastq.gz: FAILED
# SRR8799028_2.fastq.gz: FAILED
# SRR8799029_1.fastq.gz: FAILED
# SRR8799030_1.fastq.gz: FAILED
# SRR8799031_2.fastq.gz: FAILED
# SRR8799032_1.fastq.gz: FAILED
# SRR8799032_2.fastq.gz: FAILED

# # egrep 'SRR8799027_1|SRR8799028_2|SRR8799029_1|SRR8799030_1|SRR8799031_2|SRR8799032_1|SRR8799032_2' PRJNA529645.sh | grep ascp | cut -f 8-16 -d ' ' > PRJNA529645_reDownload.sh
# egrep 'SRR8799027_1|SRR8799028_2|SRR8799029_1|SRR8799030_1|SRR8799031_2|SRR8799032_1|SRR8799032_2' PRJNA529645.sh | grep wget | cut -f 8-9 -d ' ' > PRJNA529645_reDownload.sh
# bash PRJNA529645_reDownload.sh

# mv SRR8799027_1.fastq.gz.1 SRR8799027_1.fastq.gz
# mv SRR8799028_2.fastq.gz.1 SRR8799028_2.fastq.gz
# mv SRR8799029_1.fastq.gz.1 SRR8799029_1.fastq.gz
# mv SRR8799030_1.fastq.gz.1 SRR8799030_1.fastq.gz
# mv SRR8799031_2.fastq.gz.1 SRR8799031_2.fastq.gz
# mv SRR8799032_1.fastq.gz.1 SRR8799032_1.fastq.gz
# mv SRR8799032_2.fastq.gz.1 SRR8799032_2.fastq.gz

# md5sum -c PRJNA529645.md5


# 13 embryo2
# bash PRJNA505329.sh
# md5sum -c PRJNA505329.md5

# SRR8182161_2.fastq.gz: FAILED
# SRR8182164_1.fastq.gz: FAILED
# SRR8182169_1.fastq.gz: FAILED
# SRR8182171_1.fastq.gz: FAILED
# SRR8182172_1.fastq.gz: FAILED
# SRR8182172_2.fastq.gz: FAILED
# SRR8182173_1.fastq.gz: FAILED
# SRR8182173_2.fastq.gz: FAILED
# SRR8182176_2.fastq.gz: FAILED

# mv SRR8182161_2.fastq.gz.1 SRR8182161_2.fastq.gz
# mv SRR8182164_1.fastq.gz.1 SRR8182164_1.fastq.gz
# mv SRR8182169_1.fastq.gz.1 SRR8182169_1.fastq.gz
# mv SRR8182171_1.fastq.gz.1 SRR8182171_1.fastq.gz
# mv SRR8182172_1.fastq.gz.1 SRR8182172_1.fastq.gz
# mv SRR8182172_2.fastq.gz.1 SRR8182172_2.fastq.gz
# mv SRR8182173_1.fastq.gz.1 SRR8182173_1.fastq.gz
# mv SRR8182173_2.fastq.gz.1 SRR8182173_2.fastq.gz
# mv SRR8182176_2.fastq.gz.1 SRR8182176_2.fastq.gz


# # egrep 'SRR8182161_2|SRR8182164_1|SRR8182169_1|SRR8182171_1|SRR8182172_1|SRR8182172_2|SRR8182173_1|SRR8182173_2|SRR8182176_2' PRJNA505329.sh | grep ascp | cut -f 8-16 -d ' ' > PRJNA505329_reDownload.sh
# egrep 'SRR8182161_2|SRR8182164_1|SRR8182169_1|SRR8182171_1|SRR8182172_1|SRR8182172_2|SRR8182173_1|SRR8182173_2|SRR8182176_2' PRJNA505329.sh | grep wget | cut -f 8-9 -d ' ' > PRJNA505329_reDownload.sh
# bash PRJNA505329_reDownload.sh
# md5sum -c PRJNA505329.md5


### ----- tissue -----

# 14 tissue1
# bash PRJNA491832.sh
# md5sum -c PRJNA491832.md5

# 15 (tissue)
# bash PRJNA529924.sh
# md5sum -c PRJNA529924.md5

# 16 tissue1
# bash PRJNA527965.sh
# md5sum -c PRJNA527965.md5

# 17 tissue1
# bash PRJNA597907.sh
# md5sum -c PRJNA597907.md5

# 18 tissue1
# bash PRJNA358007.sh
# md5sum -c PRJNA358007.md5

# SRR5119938.fastq.gz: FAILED

# egrep 'SRR5119938' PRJNA358007.sh | grep ascp | cut -f 8-16 -d ' ' > PRJNA358007_reDownload.sh
# bash PRJNA358007_reDownload.sh
# md5sum -c PRJNA358007.md5

# 19 tissue1
# bash PRJNA541476.sh
# md5sum -c PRJNA541476.md5

# 20 tissue2 tmp
# bash PRJNA563669.sh
# md5sum -c PRJNA563669.md5

# 21 tissue2 tmp
# bash PRJNA546018.sh
# md5sum -c PRJNA546018.md5

# 22 tissue2 tmp
# bash PRJNA485080.sh
# md5sum -c PRJNA485080.md5

# 23 tissue2 tmp
# bash PRJNA549478.sh
# md5sum -c PRJNA549478.md5

# 24 tissue2 tmp
# bash PRJNA490132.sh
# md5sum -c PRJNA490132.md5

# 25 tissue2 tmp
bash PRJNA550048.sh
md5sum -c PRJNA550048.md5

# 26
bash PRJNA514721.sh
md5sum -c PRJNA514721.md5

# 27
bash PRJNA554813.sh
md5sum -c PRJNA554813.md5

# 28
bash PRJNA560203.sh
md5sum -c PRJNA560203.md5

# 29
bash PRJNA555341.sh
md5sum -c PRJNA555341.md5

# 30 tissue1
# bash PRJNA479503.sh
md5sum -c PRJNA479503.md5

# 31
bash PRJNA483985.sh
md5sum -c PRJNA483985.md5

# 32
bash PRJNA378487.sh
md5sum -c PRJNA378487.md5

# 33 tissue1 tmp
bash PRJNA523219.sh
md5sum -c PRJNA523219.md5

# 34 embryo2
# bash PRJNA476105.sh
# md5sum -c PRJNA476105.md5

# 35
bash PRJNA436713.sh
md5sum -c PRJNA436713.md5

# 36
bash PRJNA515911.sh
md5sum -c PRJNA515911.md5sum