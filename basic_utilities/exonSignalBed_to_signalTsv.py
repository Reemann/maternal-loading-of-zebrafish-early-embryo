#!/usr/bin/env python

# usage: signalBed_to_signalTsv.py <input: .bed6> <define: output bin number> <output: .tsv>

import sys
import pandas as pd

infi = sys.argv[1]
bin_num = int(sys.argv[2])
outfi = sys.argv[3]

bed_df = pd.read_table(infi, header=None, sep="\t", encoding="utf-8")
bed_df.columns = ['chr', 'start', 'end', 'name', 'score', 'strand']
bed_df['name0'] = [x+'.'+y for x,y,z in bed_df['name'].str.split('.').tolist()]

def summary_bins(df_line, bin_num) :
#     chr, start, end, name, score, strand,
    score_ls = []
    trans_total_len = 0
    for i in range(len(df_line)) :
        score_ls += [df_line['score'].iloc[i]] * (bed_df['end'].iloc[i] - bed_df['start'].iloc[i]) * bin_num
        trans_total_len += bed_df['end'].iloc[i] - bed_df['start'].iloc[i]
        
    score_ls_bin = [sum(score_ls[i:i+trans_total_len])/trans_total_len for i in range(0,bin_num*trans_total_len,trans_total_len)]
    if df_line['strand'].iloc[0] == '-' : 
        score_ls_bin.reverse()
        
    return(score_ls_bin)


summary_bins_df = bed_df.groupby('name0').apply(lambda x: summary_bins(x, bin_num))

tsv_df = pd.DataFrame()
tsv_df_name = []
tsv_df_intensity = []
for i in range(len(summary_bins_df)) :
    tsv_df_name += [summary_bins_df.index[i]] * bin_num
    tsv_df_intensity += summary_bins_df[i]

tsv_df['name'] = tsv_df_name
tsv_df['intensity'] = tsv_df_intensity
tsv_df['nbins'] = [bin_num] * len(tsv_df)
tsv_df['site'] = list(range(bin_num)) * len(summary_bins_df)
tsv_df['label'] = 1

tsv_df.to_csv(outfi, sep="\t", index=None)
