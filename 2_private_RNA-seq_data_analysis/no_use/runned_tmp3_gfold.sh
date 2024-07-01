#!/bin/bash
cd ~/maternal_loading/1.private_data/genes4_ko_analysis/RNAseq/2_expression_value

# gfold diff -s1                      wt_oocyte_20200703-2,wt_oocyte_20200703 -s2 mcm6l_oocyte_20200703,mcm6l_oocyte_20200703-2         -suf _ensGene.read_cnt -o ../diff/WT_VS_mcm6l_oocyte_ensGene.diff > ../bin/log/WT_VS_mcm6l_oocyte_ensGene.diff.log 2>&1 &
# gfold diff -s1                      wt_oocyte_20200703-2,wt_oocyte_20200703 -s2 npm2a_oocyte_20200904-2,npm2a_oocyte_20200904         -suf _ensGene.read_cnt -o ../diff/WT_VS_npm2a_oocyte_ensGene.diff > ../bin/log/WT_VS_npm2a_oocyte_ensGene.diff.log 2>&1 &
# gfold diff -s1                      wt_oocyte_20200703-2,wt_oocyte_20200703 -s2 orc1_oocyte_20200908-2,orc1_oocyte_20200908           -suf _ensGene.read_cnt -o  ../diff/WT_VS_orc1_oocyte_ensGene.diff > ../bin/log/WT_VS_orc1_oocyte_ensGene.diff.log  2>&1 &
# wait

# gfold diff -s1                                wt_64_20190503,wt_64_20190607 -s2 mcm6l_64_20190503,mcm6l_64_20190607                   -suf _ensGene.read_cnt -o ../diff/WT_VS_mcm6l_64_ensGene.diff > ../bin/log/WT_VS_mcm6l_64_ensGene.diff.log 2>&1 &
# gfold diff -s1                                wt_64_20190503,wt_64_20190607 -s2 npm2a_64_20200515,npm2a_64_20200531                   -suf _ensGene.read_cnt -o ../diff/WT_VS_npm2a_64_ensGene.diff > ../bin/log/WT_VS_npm2a_64_ensGene.diff.log 2>&1 &
# wait
# gfold diff -s1              wt_256_20190503,wt_256_20190607,wt_256_20200515 -s2 mcm6l_256_20190503,mcm6l_256_20190607                 -suf _ensGene.read_cnt -o ../diff/WT_VS_mcm6l_256_ensGene.diff > ../bin/log/WT_VS_mcm6l_256_ensGene.diff.log 2>&1 &
# gfold diff -s1              wt_256_20190503,wt_256_20190607,wt_256_20200515 -s2 npm2a_256_20200515,npm2a_256_20200531                 -suf _ensGene.read_cnt -o ../diff/WT_VS_npm2a_256_ensGene.diff > ../bin/log/WT_VS_npm2a_256_ensGene.diff.log 2>&1 &
# wait
gfold diff -s1  wt_1k_20181022,wt_1k_20190503,wt_1k_20190607,wt_1k_20200515 -s2 mcm6l_1k_20190503,mcm6l_1k_20181022,mcm6l_1k_20190607,mcm6l_1k_20181022-2 -suf _ensGene.read_cnt -o ../diff/WT_VS_mcm6l_1k_ensGene.diff > ../bin/log/diff/WT_VS_mcm6l_1k_ensGene.diff.log 2>&1 &
gfold diff -s1  wt_1k_20181022,wt_1k_20190503,wt_1k_20190607,wt_1k_20200515 -s2 mcm3l_1k_20181022                                                         -suf _ensGene.read_cnt -o ../diff/WT_VS_mcm3l_1k_ensGene.diff > ../bin/log/diff/WT_VS_mcm3l_1k_ensGene.diff.log 2>&1 &
gfold diff -s1  wt_1k_20181022,wt_1k_20190503,wt_1k_20190607,wt_1k_20200515 -s2 npm2a_1k_20200531,npm2a_1k_20200515,npm2a_1k_20181022                     -suf _ensGene.read_cnt -o ../diff/WT_VS_npm2a_1k_ensGene.diff > ../bin/log/diff/WT_VS_npm2a_1k_ensGene.diff.log 2>&1 &
gfold diff -s1  wt_1k_20181022,wt_1k_20190503,wt_1k_20190607,wt_1k_20200515 -s2 orc1_1k_20181022,orc1_1k_20181022-2                                       -suf _ensGene.read_cnt -o ../diff/WT_VS_orc1_1k_ensGene.diff  > ../bin/log/diff/WT_VS_orc1_1k_ensGene.diff.log 2>&1 &
wait
gfold diff -s1     wt_oblong_20190503,wt_oblong_20190607,wt_oblong_20200515 -s2 mcm6l_oblong_20190607,mcm6l_oblong_20190503           -suf _ensGene.read_cnt -o ../diff/WT_VS_mcm6l_oblong_ensGene.diff > ../bin/log/diff/WT_VS_mcm6l_oblong_ensGene.diff.log 2>&1 &
gfold diff -s1     wt_oblong_20190503,wt_oblong_20190607,wt_oblong_20200515 -s2 npm2a_oblong_20200515,npm2a_oblong_20200531           -suf _ensGene.read_cnt -o ../diff/WT_VS_npm2a_oblong_ensGene.diff > ../bin/log/diff/WT_VS_npm2a_oblong_ensGene.diff.log 2>&1 &
wait
gfold diff -s1                                             wt_6hpf_20190503 -s2 mcm6l_6hpf_20190503                                   -suf _ensGene.read_cnt -o ../diff/WT_VS_npm2a_oblong_ensGene.diff > ../bin/log/diff/WT_VS_mcm6l_6hpf_ensGene.diff.log 2>&1 &
wait
