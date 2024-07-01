#!/usr/bin/env python

# generate tail 2/3 concatenated exons bed from input exon.bed
import sys
import pandas as pd

# usage: tail_2of3_concatenatedExon.py <input fi: exon.bed > <output fi: tail2of3_exon.bed>

# finame = '/mnt/Storage/home/wangyiman/source/bySpecies/danRer11_2/ensGene/danRer11_2_main_exonEns.bed'
finame = sys.argv[1]
total_exon_bed_df = pd.read_table(finame, header=None, sep="\t", encoding="utf-8")
total_exon_bed_df.columns = ['chr', 'start', 'end', 'name', 'score', 'strand']
total_2of3_exon_bed_df = pd.DataFrame()
transcript_id0, transcript_id_version, exon_num = zip(*total_exon_bed_df['name'].str.split('.').tolist())
transcript_id_set = set([f'{a}.{b}' for a,b in zip(transcript_id0, transcript_id_version)])
for trans_id in transcript_id_set :
    index = [x.split('.')[0:2] == trans_id.split('.')[0:2] for x in total_exon_bed_df['name']]
    df_1trans = total_exon_bed_df.loc[index]
    df_1trans.reset_index(inplace = True)
    genebody_len = sum(list(df_1trans['end'] - df_1trans['start']))
    if set(df_1trans['strand'].tolist()) == {'+'} :
        i = 0
        before_2of3_len = df_1trans.iloc[i,:]['end'] - df_1trans.iloc[i,:]['start']
        while before_2of3_len <= genebody_len / 3 :
            i += 1
            before_2of3_len += df_1trans.iloc[i,:]['end'] - df_1trans.iloc[i,:]['start']
        
        df_1trans.at[i, 'start'] = df_1trans.at[i, 'end'] - int(before_2of3_len - genebody_len / 3)
        total_2of3_exon_bed_df = pd.concat([total_2of3_exon_bed_df, df_1trans.iloc[i:,:]])
    elif set(df_1trans['strand'].tolist()) == {'-'} :
        i = len(df_1trans) - 1
        before_2of3_len = df_1trans.iloc[i,:]['end'] - df_1trans.iloc[i,:]['start']
        while before_2of3_len <= genebody_len / 3 :
            i -= 1
            before_2of3_len += df_1trans.iloc[i,:]['end'] - df_1trans.iloc[i,:]['start']
        
        df_1trans.at[i, 'end'] = df_1trans.at[i, 'start'] + int(before_2of3_len - genebody_len / 3)
        total_2of3_exon_bed_df = pd.concat([total_2of3_exon_bed_df, df_1trans.iloc[:i+1,:]])
    
# total_2of3_exon_bed_df[["chr", "start", "end", "name", "score", "strand"]].to_csv('/mnt/Storage/home/wangyiman/maternal_loading/2.public_data/analysis_embryoTrans_tissueTrans/total_tail2of3_exon.bed', index=False, sep='\t')
total_2of3_exon_bed_df[["chr", "start", "end", "name", "score", "strand"]].to_csv(sys.argv[2], index=False, sep='\t')
