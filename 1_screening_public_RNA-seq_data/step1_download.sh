#!/bin/bash

cd ~/maternal_loading/2.public_data

function ena_meta_download {
    project_accession=${1}
    wget -O ${project_accession}.tsv "https://www.ebi.ac.uk/ena/portal/api/filereport?accession=${project_accession}&result=read_run&fields=sample_accession,experiment_accession,run_accession,scientific_name,library_layout,fastq_md5,fastq_ftp&format=tsv&download=true"
}



# ----- 01 PRJNA189430 PRJNA154389 early embryonic development paired-end -----

cd 0_raw_data
for i in SRR1049814 SRR372787 SRR372788 SRR372789 SRR372790 SRR372791 SRR372792 SRR372793 SRR372794 SRR372795 SRR372796 SRR372797 SRR372798 SRR372799 SRR372800 SRR372801 SRR372802 SRR372803;do
    enaDataGet -f fastq $i -d . > enaDataGet.log.${i} 2>&1
done
wait;
cat enaDataGet.log.* >> enaDataGet.log
rm enaDataGet.log.*
ln -s SRR*/SRR*.gz .


# ----- 02 Apr-24-2021 expression GSE114954 Mol Cell Wei Xie -----

project_accession=PRJNA473799
cd 0_raw_data
ena_meta_download ${project_accession}
mv ${project_accession}.tsv ${project_accession}.tsv.tmp
cat <(head -1 ${project_accession}.tsv.tmp) <(egrep "SRR7235498|SRR7235499|SRR7235517|SRR7235518|SRR7235544|SRR7235545|SRR7762354|SRR7762355|SRR7762356|SRR7762357|SRR7235549|SRR7235550" ${project_accession}.tsv.tmp) > ${project_accession}.tsv
rm ${project_accession}.tsv.tmp
gen_download_from_ebi.py ${project_accession}.tsv ${project_accession}.sh
bash ${project_accession}.sh
md5_of_ENAfastq_generate.py ${project_accession}.tsv ${project_accession}.md5
md5sum -c ${project_accession}.md5
cd ..


# ----- 03 expression GSE56977 GSM1531258 Oblong 3.5hpf Schier AF -----

project_accession=PRJNA245102
cd 0_raw_data
ena_meta_download ${project_accession}
mv ${project_accession}.tsv ${project_accession}.tsv.tmp
cat <(head -1 ${project_accession}.tsv.tmp) <(egrep "SRR1621206" ${project_accession}.tsv.tmp) > ${project_accession}.tsv
rm ${project_accession}.tsv.tmp
gen_download_from_ebi.py ${project_accession}.tsv ${project_accession}.sh
bash ${project_accession}.sh
md5_of_ENAfastq_generate.py ${project_accession}.tsv ${project_accession}.md5
md5sum -c ${project_accession}.md5
cd ..


# ----- 04 elife embryonic -----

project_accession=PRJEB12982
cd 0_raw_data
ena_meta_download ${project_accession}
rm ${project_accession}.tsv.tmp
gen_download_from_ebi.py ${project_accession}.tsv ${project_accession}.sh
bash ${project_accession}.sh
md5_of_ENAfastq_generate.py ${project_accession}.tsv ${project_accession}.md5
md5sum -c ${project_accession}.md5
cd ..


# --- 05 SRR8257203 SRR8257204 SRR8257205 

project_accession=PRJNA507426
cd 0_raw_data
ena_meta_download ${project_accession}
mv ${project_accession}.tsv ${project_accession}.tsv.tmp
cat <(head -1 ${project_accession}.tsv.tmp) <(egrep "SRR8257203|SRR8257204|SRR8257205" ${project_accession}.tsv.tmp) > ${project_accession}.tsv
rm ${project_accession}.tsv.tmp
gen_download_from_ebi.py ${project_accession}.tsv ${project_accession}.sh
bash ${project_accession}.sh
md5_of_ENAfastq_generate.py ${project_accession}.tsv ${project_accession}.md5
md5sum -c ${project_accession}.md5
cd ..


# --- 06 PRJNA493632 

project_accession=PRJNA493632
cd 0_raw_data
ena_meta_download ${project_accession}
# rm ${project_accession}.tsv.tmp
gen_download_from_ebi.py ${project_accession}.tsv ${project_accession}.sh
bash ${project_accession}.sh
md5_of_ENAfastq_generate.py ${project_accession}.tsv ${project_accession}.md5
md5sum -c ${project_accession}.md5
cd ..


# ----- 07 Jan-2-2020 GSE142599 28hpf/36hpf embryos -----

project_accession=PRJNA597725
cd 0_raw_data
ena_meta_download ${project_accession}
mv ${project_accession}.tsv ${project_accession}.tsv.tmp
cat <(head -1 ${project_accession}.tsv.tmp) <(egrep "SRR10767278|SRR10767279|SRR10767280|SRR10767287|SRR10767288|SRR10767289" ${project_accession}.tsv.tmp) > ${project_accession}.tsv
rm ${project_accession}.tsv.tmp
gen_download_from_ebi.py ${project_accession}.tsv ${project_accession}.sh
bash ${project_accession}.sh
md5_of_ENAfastq_generate.py ${project_accession}.tsv ${project_accession}.md5
md5sum -c ${project_accession}.md5
cd ..



# ----- 08 Jan-5-2020 GSE119070 1cell/high/24hpf whole embryo -----

project_accession=PRJNA488043
cd 0_raw_data
ena_meta_download ${project_accession}
mv ${project_accession}.tsv ${project_accession}.tsv.tmp
cat <(head -1 ${project_accession}.tsv.tmp) <(egrep "SRR775782[5-9]|SRR7757830|SRR9962799|SRR996280[0-3]|SRR996281[7-9]|SRR996282[0-1]" ${project_accession}.tsv.tmp) > ${project_accession}.tsv
rm ${project_accession}.tsv.tmp
gen_download_from_ebi.py ${project_accession}.tsv ${project_accession}.sh
bash ${project_accession}.sh
md5_of_ENAfastq_generate.py ${project_accession}.tsv ${project_accession}.md5
md5sum -c ${project_accession}.md5
cd ..




# ----- 09 Jan-6-2020 GSE135237 36hpf/72hpf neural crest cells -----

project_accession=PRJNA558085
cd 0_raw_data
ena_meta_download ${project_accession}
mv ${project_accession}.tsv ${project_accession}.tsv.tmp
cat <(head -1 ${project_accession}.tsv.tmp) <(egrep "SRR987991[345678]" ${project_accession}.tsv.tmp) > ${project_accession}.tsv
rm ${project_accession}.tsv.tmp
gen_download_from_ebi.py ${project_accession}.tsv ${project_accession}.sh
bash ${project_accession}.sh
md5_of_ENAfastq_generate.py ${project_accession}.tsv ${project_accession}.md5
md5sum -c ${project_accession}.md5
cd ..


# ----- 10 Jan-9-2020 GSE132304 20ss/52hpf/72hpf skin -----

project_accession=PRJNA547573
cd 0_raw_data
ena_meta_download ${project_accession}
mv ${project_accession}.tsv ${project_accession}.tsv.tmp
cat <(head -1 ${project_accession}.tsv.tmp) <(egrep "SRR921148[4589]|SRR921149[123478]|SRR921150[1234]" ${project_accession}.tsv.tmp) > ${project_accession}.tsv
rm ${project_accession}.tsv.tmp
gen_download_from_ebi.py ${project_accession}.tsv ${project_accession}.sh
bash ${project_accession}.sh
md5_of_ENAfastq_generate.py ${project_accession}.tsv ${project_accession}.md5
md5sum -c ${project_accession}.md5
cd ..

# ----- 11 Feb-4-2020 GSE120643 0/2/3/4/6hpf embryo -----

project_accession=PRJNA493827
cd 0_raw_data
ena_meta_download ${project_accession}
mv ${project_accession}.tsv ${project_accession}.tsv.tmp
cat <(head -1 ${project_accession}.tsv.tmp) <(egrep "SRR794260[5-9]|SRR794261[0-4]" ${project_accession}.tsv.tmp) > ${project_accession}.tsv
rm ${project_accession}.tsv.tmp
gen_download_from_ebi.py ${project_accession}.tsv ${project_accession}.sh
bash ${project_accession}.sh
md5_of_ENAfastq_generate.py ${project_accession}.tsv ${project_accession}.md5
md5sum -c ${project_accession}.md5
cd ..


# ----- 12 Feb-6-2020 7/24hpf pgc/somatic -----

project_accession=PRJNA529645
cd 0_raw_data
ena_meta_download ${project_accession}
mv ${project_accession}.tsv ${project_accession}.tsv.tmp
cat <(head -1 ${project_accession}.tsv.tmp) <(egrep "SRR879902[6-9]|SRR879903[0-3]" ${project_accession}.tsv.tmp) > ${project_accession}.tsv
rm ${project_accession}.tsv.tmp
gen_download_from_ebi.py ${project_accession}.tsv ${project_accession}.sh
bash ${project_accession}.sh
md5_of_ENAfastq_generate.py ${project_accession}.tsv ${project_accession}.md5
md5sum -c ${project_accession}.md5
cd ..


# ----- 13 Feb-22-2020 4/7/24/36 pgc/somatic -----

project_accession=PRJNA505329
cd 0_raw_data
ena_meta_download ${project_accession}
mv ${project_accession}.tsv ${project_accession}.tsv.tmp
cat <(head -1 ${project_accession}.tsv.tmp) <(egrep "SRR818216[1-9]|SRR818217[0-6]" ${project_accession}.tsv.tmp) > ${project_accession}.tsv
rm ${project_accession}.tsv.tmp
gen_download_from_ebi.py ${project_accession}.tsv ${project_accession}.sh
bash ${project_accession}.sh
md5_of_ENAfastq_generate.py ${project_accession}.tsv ${project_accession}.md5
md5sum -c ${project_accession}.md5
cd ..


# --- 14 SRR7875953

project_accession=PRJNA491832
cd 0_raw_data
ena_meta_download ${project_accession}
mv ${project_accession}.tsv ${project_accession}.tsv.tmp
cat <(head -1 ${project_accession}.tsv.tmp) <(egrep "SRR7875953" ${project_accession}.tsv.tmp) > ${project_accession}.tsv
rm ${project_accession}.tsv.tmp
gen_download_from_ebi.py ${project_accession}.tsv ${project_accession}.sh
bash ${project_accession}.sh
md5_of_ENAfastq_generate.py ${project_accession}.tsv ${project_accession}.md5
md5sum -c ${project_accession}.md5
cd ..


# --- 15 SRR8816377 SRR8816378 SRR8816379

project_accession=PRJNA529924
cd 0_raw_data
ena_meta_download ${project_accession}
mv ${project_accession}.tsv ${project_accession}.tsv.tmp
cat <(head -1 ${project_accession}.tsv.tmp) <(egrep "SRR8816377|SRR8816378|SRR8816379" ${project_accession}.tsv.tmp) > ${project_accession}.tsv
rm ${project_accession}.tsv.tmp
gen_download_from_ebi.py ${project_accession}.tsv ${project_accession}.sh
bash ${project_accession}.sh
md5_of_ENAfastq_generate.py ${project_accession}.tsv ${project_accession}.md5
md5sum -c ${project_accession}.md5
cd ..


# ----- 16 Jan-1-2020 GSE128511 56 hpf heart -----

project_accession=PRJNA527965
cd 0_raw_data
ena_meta_download ${project_accession}
mv ${project_accession}.tsv ${project_accession}.tsv.tmp
cat <(head -1 ${project_accession}.tsv.tmp) <(egrep "SRR8749827|SRR8749828" ${project_accession}.tsv.tmp) > ${project_accession}.tsv
rm ${project_accession}.tsv.tmp
gen_download_from_ebi.py ${project_accession}.tsv ${project_accession}.sh
bash ${project_accession}.sh
md5_of_ENAfastq_generate.py ${project_accession}.tsv ${project_accession}.md5
md5sum -c ${project_accession}.md5
cd ..


# ----- 17 Jan-2-2020 GSE142673 5dpf (Whole-larvae total RNA) -----

project_accession=PRJNA597907
cd 0_raw_data
ena_meta_download ${project_accession}
mv ${project_accession}.tsv ${project_accession}.tsv.tmp
cat <(head -1 ${project_accession}.tsv.tmp) <(egrep "SRR10776672|SRR10776673|SRR10776674" ${project_accession}.tsv.tmp) > ${project_accession}.tsv
rm ${project_accession}.tsv.tmp
gen_download_from_ebi.py ${project_accession}.tsv ${project_accession}.sh
bash ${project_accession}.sh
md5_of_ENAfastq_generate.py ${project_accession}.tsv ${project_accession}.md5
md5sum -c ${project_accession}.md5
cd ..



# --- 18 SRR5119935 SRR5119936 SRR5119937 SRR5119938 SRR5119939 SRR5119940 

project_accession=PRJNA358007
cd 0_raw_data
ena_meta_download ${project_accession}
mv ${project_accession}.tsv ${project_accession}.tsv.tmp
cat <(head -1 ${project_accession}.tsv.tmp) <(egrep "SRR5119935|SRR5119936|SRR5119937|SRR5119938|SRR5119939|SRR5119940" ${project_accession}.tsv.tmp) > ${project_accession}.tsv
rm ${project_accession}.tsv.tmp
gen_download_from_ebi.py ${project_accession}.tsv ${project_accession}.sh
bash ${project_accession}.sh
md5_of_ENAfastq_generate.py ${project_accession}.tsv ${project_accession}.md5
md5sum -c ${project_accession}.md5
cd ..


# --- 19 SRR9022957 SRR9022958 SRR9022959 

project_accession=PRJNA541476
cd 0_raw_data
ena_meta_download ${project_accession}
mv ${project_accession}.tsv ${project_accession}.tsv.tmp
cat <(head -1 ${project_accession}.tsv.tmp) <(egrep "SRR9022957|SRR9022958|SRR9022959" ${project_accession}.tsv.tmp) > ${project_accession}.tsv
rm ${project_accession}.tsv.tmp
gen_download_from_ebi.py ${project_accession}.tsv ${project_accession}.sh
bash ${project_accession}.sh
md5_of_ENAfastq_generate.py ${project_accession}.tsv ${project_accession}.md5
md5sum -c ${project_accession}.md5
cd ..


# ----- 20 Dec-30-2019 GSE136786 valve cell -----

project_accession=PRJNA563669
cd 0_raw_data
ena_meta_download ${project_accession}
mv ${project_accession}.tsv ${project_accession}.tsv.tmp
cat <(head -1 ${project_accession}.tsv.tmp) <(egrep "SRR10060610|SRR10060611|SRR10060612" ${project_accession}.tsv.tmp) > ${project_accession}.tsv
rm ${project_accession}.tsv.tmp
gen_download_from_ebi.py ${project_accession}.tsv ${project_accession}.sh
bash ${project_accession}.sh
md5_of_ENAfastq_generate.py ${project_accession}.tsv ${project_accession}.md5
md5sum -c ${project_accession}.md5
cd ..


# ----- 21 Dec-31-2019 GSE132141 retina Muller cells -----

project_accession=PRJNA546018
cd 0_raw_data
ena_meta_download ${project_accession}
mv ${project_accession}.tsv ${project_accession}.tsv.tmp
cat <(head -1 ${project_accession}.tsv.tmp) <(egrep "SRR9189638|SRR9189639|SRR9189640" ${project_accession}.tsv.tmp) > ${project_accession}.tsv
rm ${project_accession}.tsv.tmp
gen_download_from_ebi.py ${project_accession}.tsv ${project_accession}.sh
bash ${project_accession}.sh
md5_of_ENAfastq_generate.py ${project_accession}.tsv ${project_accession}.md5
md5sum -c ${project_accession}.md5
cd ..


# ----- 22 Jan-2-2020 GSE128511 5/6 mpf kidney -----

project_accession=PRJNA485080
cd 0_raw_data
ena_meta_download ${project_accession}
mv ${project_accession}.tsv ${project_accession}.tsv.tmp
cat <(head -1 ${project_accession}.tsv.tmp) <(egrep "SRR7659031|SRR7659032|SRR7659033|SRR7659034" ${project_accession}.tsv.tmp) > ${project_accession}.tsv
rm ${project_accession}.tsv.tmp
gen_download_from_ebi.py ${project_accession}.tsv ${project_accession}.sh
bash ${project_accession}.sh
md5_of_ENAfastq_generate.py ${project_accession}.tsv ${project_accession}.md5
md5sum -c ${project_accession}.md5
cd ..


----- 23 Jan-3-2020 GSE132927 kidney HSC gata2a/runx1 FACS -----

project_accession=PRJNA549478
cd 0_raw_data
ena_meta_download ${project_accession}
mv ${project_accession}.tsv ${project_accession}.tsv.tmp
cat <(head -1 ${project_accession}.tsv.tmp) <(egrep "SRR9320538|SRR9320539|SRR9320540" ${project_accession}.tsv.tmp) > ${project_accession}.tsv
rm ${project_accession}.tsv.tmp
gen_download_from_ebi.py ${project_accession}.tsv ${project_accession}.sh
bash ${project_accession}.sh
md5_of_ENAfastq_generate.py ${project_accession}.tsv ${project_accession}.md5
md5sum -c ${project_accession}.md5
cd ..


# ----- 24 Jan-3-2020 GSE119718 4dpf/5dpf vascular muscle acta2/foxc1b/kdrl FACS -----

project_accession=PRJNA490132
cd 0_raw_data
ena_meta_download ${project_accession}
mv ${project_accession}.tsv ${project_accession}.tsv.tmp
cat <(head -1 ${project_accession}.tsv.tmp) <(egrep "SRR78137*" ${project_accession}.tsv.tmp) > ${project_accession}.tsv
rm ${project_accession}.tsv.tmp
gen_download_from_ebi.py ${project_accession}.tsv ${project_accession}.sh
bash ${project_accession}.sh
md5_of_ENAfastq_generate.py ${project_accession}.tsv ${project_accession}.md5
md5sum -c ${project_accession}.md5
cd ..


# ----- 25 Jan-7-2020 GSE133130 heart: ventricle -----

project_accession=PRJNA550048
cd 0_raw_data
ena_meta_download ${project_accession}
mv ${project_accession}.tsv ${project_accession}.tsv.tmp
cat <(head -1 ${project_accession}.tsv.tmp) <(egrep "SRR933640[56789]" ${project_accession}.tsv.tmp) > ${project_accession}.tsv
rm ${project_accession}.tsv.tmp
gen_download_from_ebi.py ${project_accession}.tsv ${project_accession}.sh
bash ${project_accession}.sh
md5_of_ENAfastq_generate.py ${project_accession}.tsv ${project_accession}.md5
md5sum -c ${project_accession}.md5
cd ..


# ----- 26 Jan-8-2020 GSE124970 intestinal epithelial cells -----

project_accession=PRJNA514721
cd 0_raw_data
ena_meta_download ${project_accession}
mv ${project_accession}.tsv ${project_accession}.tsv.tmp
cat <(head -1 ${project_accession}.tsv.tmp) <(egrep "SRR843510[456789]" ${project_accession}.tsv.tmp) > ${project_accession}.tsv
rm ${project_accession}.tsv.tmp
gen_download_from_ebi.py ${project_accession}.tsv ${project_accession}.sh
bash ${project_accession}.sh
md5_of_ENAfastq_generate.py ${project_accession}.tsv ${project_accession}.md5
md5sum -c ${project_accession}.md5
cd ..


# ----- 27 Jan-9-2020 GSE134345 5mpf ovary -----

project_accession=PRJNA554813
cd 0_raw_data
ena_meta_download ${project_accession}
mv ${project_accession}.tsv ${project_accession}.tsv.tmp
cat <(head -1 ${project_accession}.tsv.tmp) <(egrep "SRR9693179" ${project_accession}.tsv.tmp) > ${project_accession}.tsv
rm ${project_accession}.tsv.tmp
gen_download_from_ebi.py ${project_accession}.tsv ${project_accession}.sh
bash ${project_accession}.sh
md5_of_ENAfastq_generate.py ${project_accession}.tsv ${project_accession}.md5
md5sum -c ${project_accession}.md5
cd ..


# ----- 28 Jan-10-2020 GSE135823 3mpf heart -----

project_accession=PRJNA560203
cd 0_raw_data
ena_meta_download ${project_accession}
mv ${project_accession}.tsv ${project_accession}.tsv.tmp
cat <(head -1 ${project_accession}.tsv.tmp) <(egrep "SRR996639[456]" ${project_accession}.tsv.tmp) > ${project_accession}.tsv
rm ${project_accession}.tsv.tmp
gen_download_from_ebi.py ${project_accession}.tsv ${project_accession}.sh
bash ${project_accession}.sh
md5_of_ENAfastq_generate.py ${project_accession}.tsv ${project_accession}.md5
md5sum -c ${project_accession}.md5
cd ..


# ----- 29 Feb-9-2020 2mpf liver -----

project_accession=PRJNA555341
cd 0_raw_data
ena_meta_download ${project_accession}
mv ${project_accession}.tsv ${project_accession}.tsv.tmp
cat <(head -1 ${project_accession}.tsv.tmp) <(egrep "SRR970799[01]" ${project_accession}.tsv.tmp) > ${project_accession}.tsv
rm ${project_accession}.tsv.tmp
gen_download_from_ebi.py ${project_accession}.tsv ${project_accession}.sh
bash ${project_accession}.sh
md5_of_ENAfastq_generate.py ${project_accession}.tsv ${project_accession}.md5
md5sum -c ${project_accession}.md5
cd ..


# ----- 30 Feb-9-2020 adult testis -----

project_accession=PRJNA479503
cd 0_raw_data
ena_meta_download ${project_accession}
mv ${project_accession}.tsv ${project_accession}.tsv.tmp
cat <(head -1 ${project_accession}.tsv.tmp) <(egrep "SRR746867[4-9]|SRR746868[0-3]" ${project_accession}.tsv.tmp) > ${project_accession}.tsv
rm ${project_accession}.tsv.tmp
gen_download_from_ebi.py ${project_accession}.tsv ${project_accession}.sh
bash ${project_accession}.sh
md5_of_ENAfastq_generate.py ${project_accession}.tsv ${project_accession}.md5
md5sum -c ${project_accession}.md5
cd ..


# ----- 31 Feb-18-2020 4dpf podocyte/endothelium -----

project_accession=PRJNA483985
cd 0_raw_data
ena_meta_download ${project_accession}
mv ${project_accession}.tsv ${project_accession}.tsv.tmp
cat <(head -1 ${project_accession}.tsv.tmp) <(egrep "SRR763347[7-9]|SRR763348[6-8]" ${project_accession}.tsv.tmp) > ${project_accession}.tsv
rm ${project_accession}.tsv.tmp
gen_download_from_ebi.py ${project_accession}.tsv ${project_accession}.sh
bash ${project_accession}.sh
md5_of_ENAfastq_generate.py ${project_accession}.tsv ${project_accession}.md5
md5sum -c ${project_accession}.md5
cd ..


# ----- 32 Feb-19-2020 3dpf kidney -----

project_accession=PRJNA378487
cd 0_raw_data
ena_meta_download ${project_accession}
mv ${project_accession}.tsv ${project_accession}.tsv.tmp
cat <(head -1 ${project_accession}.tsv.tmp) <(egrep "SRR532050[0-2]" ${project_accession}.tsv.tmp) > ${project_accession}.tsv
rm ${project_accession}.tsv.tmp
gen_download_from_ebi.py ${project_accession}.tsv ${project_accession}.sh
bash ${project_accession}.sh
md5_of_ENAfastq_generate.py ${project_accession}.tsv ${project_accession}.md5
md5sum -c ${project_accession}.md5
cd ..


# ----- 33 Feb-20-2020 adult epidermis cLCs(conventional Langerhans cells)/Keratinocytes/MLCs/Neutrophils/T -----

project_accession=PRJNA523219
cd 0_raw_data
ena_meta_download ${project_accession}
mv ${project_accession}.tsv ${project_accession}.tsv.tmp
cat <(head -1 ${project_accession}.tsv.tmp) <(egrep "SRR859173[6-9]|SRR859174[0-9]|SRR859175[0-2]" ${project_accession}.tsv.tmp) > ${project_accession}.tsv
rm ${project_accession}.tsv.tmp
gen_download_from_ebi.py ${project_accession}.tsv ${project_accession}.sh
bash ${project_accession}.sh
md5_of_ENAfastq_generate.py ${project_accession}.tsv ${project_accession}.md5
md5sum -c ${project_accession}.md5
cd ..


# ----- 34 Feb-28-2020 ovray -----

project_accession=PRJNA476105
cd 0_raw_data
ena_meta_download ${project_accession}
mv ${project_accession}.tsv ${project_accession}.tsv.tmp
cat <(head -1 ${project_accession}.tsv.tmp) <(egrep "SRR7341815" ${project_accession}.tsv.tmp) > ${project_accession}.tsv
rm ${project_accession}.tsv.tmp
gen_download_from_ebi.py ${project_accession}.tsv ${project_accession}.sh
bash ${project_accession}.sh
md5_of_ENAfastq_generate.py ${project_accession}.tsv ${project_accession}.md5
md5sum -c ${project_accession}.md5
cd ..


# ----- 35 Feb-28-2020 muscle -----

project_accession=PRJNA436713
cd 0_raw_data
ena_meta_download ${project_accession}
mv ${project_accession}.tsv ${project_accession}.tsv.tmp
cat <(head -1 ${project_accession}.tsv.tmp) <(egrep "SRR679877[5-7]" ${project_accession}.tsv.tmp) > ${project_accession}.tsv
rm ${project_accession}.tsv.tmp
gen_download_from_ebi.py ${project_accession}.tsv ${project_accession}.sh
bash ${project_accession}.sh
md5_of_ENAfastq_generate.py ${project_accession}.tsv ${project_accession}.md5
md5sum -c ${project_accession}.md5
cd ..


# ----- 36 Mar-1-2020 beta_cell -----

project_accession=PRJNA515911
cd 0_raw_data
ena_meta_download ${project_accession}
mv ${project_accession}.tsv ${project_accession}.tsv.tmp
cat <(head -1 ${project_accession}.tsv.tmp) <(egrep "SRR845690[67]" ${project_accession}.tsv.tmp) > ${project_accession}.tsv
rm ${project_accession}.tsv.tmp
gen_download_from_ebi.py ${project_accession}.tsv ${project_accession}.sh
bash ${project_accession}.sh
md5_of_ENAfastq_generate.py ${project_accession}.tsv ${project_accession}.md5
md5sum -c ${project_accession}.md5
cd ..
