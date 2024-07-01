#!/usr/bin/env python
import os
from posix import listdir
import sys
import numpy as np
import pandas as pd

# usage : bwSum_exon2transcript_binNumSwitch.py <old_binNum_bwSum.tsv> <new_binNum_bwSum.tsv> <new_bin_num> <ref.bed>
# 'old_binNum_bwSum.tsv' is the output of 'bw_summary_bed_bins.py' with old bin number or length
# 'new_binNum_bwSum.tsv' has new bin number which is defined by 'new_bin_num', 
# 'new_binNum_bwSum.tsv' only contains 'label' == 1 lines
# 'ref.bed' contains gene id in column 4 and strand information in column 6

# --bylen
# -5 0 -3 0

ref_bed_df = pd.read_table(sys.argv[4], header=None, sep="\t", encoding="utf-8")
name_strand_dict = {}
for i in range(len(ref_bed_df)) :
    if ref_bed_df.iloc[i, 3].split('.')[0] not in name_strand_dict.keys() :
        name_strand_dict[ref_bed_df.iloc[i, 3].split('.')[0]] = ref_bed_df.iloc[i, 5]

infiname = sys.argv[1]
old_exon_bwSum_df = pd.read_table(infiname, header=0, sep="\t", encoding="utf-8")
old_exon_bwSum_df = old_exon_bwSum_df.loc[old_exon_bwSum_df['label'] == 1]

new_transcript_bwSum_df = pd.DataFrame()
new_transcript_bwSum_df_name = []
new_transcript_bwSum_df_nbins = []
new_transcript_bwSum_df_site = []
new_transcript_bwSum_df_intensity = []
new_transcript_bwSum_df_label = []

trans_nbins = int(sys.argv[3])
trans_id_ls = list(zip(*old_exon_bwSum_df["name"].str.split(".")))[0]

for name in sorted(list(set(trans_id_ls))) :
    index = [x == name.split('.')[0] for x in trans_id_ls]
    if name_strand_dict[name] == "+" :
        intensity = old_exon_bwSum_df.loc[index].sort_values(by="name", ascending=True)["intensity"].tolist()
    elif name_strand_dict[name] == "-" :
        intensity = old_exon_bwSum_df.loc[index].sort_values(by="name", ascending=False)["intensity"].tolist()
    multi_intensity = []
    for i in intensity :
        multi_intensity += [i] * trans_nbins
    
    new_intensity = []
    for i in range(0, len(multi_intensity), len(intensity)) :
        new_intensity.append(sum(multi_intensity[i:i+len(intensity)])/len(intensity))
    
    new_transcript_bwSum_df_name += [name] * trans_nbins
    new_transcript_bwSum_df_nbins += [trans_nbins] * trans_nbins
    new_transcript_bwSum_df_site += list(range(trans_nbins))
    new_transcript_bwSum_df_intensity += new_intensity
    new_transcript_bwSum_df_label += [1] * trans_nbins
        
new_transcript_bwSum_df['name'] = new_transcript_bwSum_df_name
new_transcript_bwSum_df['nbins'] = new_transcript_bwSum_df_nbins
new_transcript_bwSum_df['site'] = new_transcript_bwSum_df_site
new_transcript_bwSum_df['intensity'] = new_transcript_bwSum_df_intensity
new_transcript_bwSum_df['label'] = new_transcript_bwSum_df_label
    
new_transcript_bwSum_df.to_csv(sys.argv[2], sep="\t", index=False)