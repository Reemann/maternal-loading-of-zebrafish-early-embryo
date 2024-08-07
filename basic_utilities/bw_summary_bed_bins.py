#!/usr/bin/env python

import os
import sys
import re
import argparse
import logging

import pandas as pd
import numpy as np
import pyBigWig as pbw

from copy import deepcopy


# create logger
logger_name = "bigWigSummary-bins"
logger = logging.getLogger(logger_name)
logger.setLevel(logging.DEBUG)

sh=logging.StreamHandler()
sh.setLevel(logging.DEBUG)

fmt = "%(asctime)-15s %(levelname)s %(name)s : pid - %(process)d :  %(message)s"
datefmt = "#%a %d %b %Y %H:%M:%S"
formatter = logging.Formatter(fmt, datefmt)
sh.setFormatter(formatter)
logger.addHandler(sh)


def generate_opt() -> argparse.ArgumentParser:
    parser=argparse.ArgumentParser()
    parser.add_argument('-b',"--bed",action="store",type=str, dest="bed", required=True, help="the bed file your input, must have 6 columns or more, and the 4th col will be used as id in output\n")
    parser.add_argument('-w',"--bigwig",action="store",type=str, dest="bw", required=True, help="the bigwig file you want to scan\n")
    parser.add_argument('-n',"--bins",action="store",type=int,default=1,dest="bins",help="how many data points you want to scan in the each region\n")
    parser.add_argument("--bylen",action="store_true",default=False,dest="bylen",help="if set, the length of each bin will be same, and equals to the num set by --bins or other. Defalut is false")
    parser.add_argument('-5',"--upstream",action="store",type=int,default=0,dest="upstream",help="how many bp to extense the bed region up stream (strand specific, 5' direction)\n ")
    parser.add_argument('-3',"--downstream",action="store",type=int,default=0,dest="downstream",help="how many bp to extense the bed region down stream (strand specific, 3' direction) \n")
    parser.add_argument('--5bins',action="store",type=int,default=100,dest="bins_5",help="how many bins  of 5'direction tail\n")
    parser.add_argument('--3bins',action="store",type=int,default=100,dest="bins_3",help="how many bins  of 3'direction tail\n")
    parser.add_argument('-o','--outname',action="store",type=str,default="std",dest="outname",help="output file name, tsv file. first col is the id in given bed, second is the description of part (upstream, region, and downstream), third is the bin id  in given part, and 4th is the real intensity\n")
    parser.add_argument('-0','--non-directional',action="store_false",default=True,dest="directional",help="output the bins in the order of 5->3, or by the order of site, regardless of strand if choose, not recommend!\n")

    return parser


def validate_opt(args:argparse.ArgumentParser):
    flag=True
    if not os.path.isfile(args.bed):
        logger.error(f"input bed file {args.bed} is not exist! ")
        flag=False
    elif not os.path.isfile(args.bw):
        logger.error(f"input bigwig file {args.bw} is not exist! ")
        flag=False
    elif args.upstream< args.bins_5 or args.downstream< args.bins_3:
        logger.error("bins num > region length!")
        args.bins_5=args.upstream
        args.bins_3=args.downstream
        logger.warning(f"turn 5bins to {args.bins_5}")
        logger.warning(f"turn 3bins to {args.bins_3}")

    if args.bylen:
        logger.info("set by length mode")
    
    if not flag:
        sys.exit(1)
    
    return args

def get_bw_stat(x:pd.Series,bw,nbins=1):
    strand=x["strand"]
    try:
        x["start"]=max(x["start"],0)
        outs=np.array(bw.stats(x["chr"],int(x["start"]),int(x["end"]),nBins=nbins))
    except Exception as e:
        logger.error(f'Error at (chr, start, end): ({x["chr"],int(x["start"]),int(x["end"])})')
        logger.warning(f'Treat result of (chr, start, end): ({x["chr"],int(x["start"]),int(x["end"])}) as 0')
        logger.warning(e)
        outs=np.array([np.nan]*nbins)
    if strand=="-":
        outs=outs[::-1]
    outs[outs==None]=np.nan
    outs[np.isnan(outs)]="nan"
    return outs

def process_each_part(df,bw,nbins,label,bylen=False):
    df_p=df.query("start+1 < end")
    if not bylen:
        df_result=pd.DataFrame(list(df_p.apply(get_bw_stat,args=(bw,nbins),axis=1)))
        df_result["name"]=df_p["name"]
        df_result["nbins"]=df_p["nbins"]
        df_result=df_result.set_index(["name","nbins"]).stack().reset_index().dropna()
        df_result.columns = ["name", "nbins", "site", "intensity" ]
        df_result["label"]=label
    else:
        # The codes below in this function is modified by Reemann :
        df_p["nbins"] = (df_p["end"] - df_p["start"]) / nbins + 0.5
        df_p["nbins"] = df_p["nbins"].astype(int)
        # df_p["end"]=df_p["start"]+df_p["nbins"]*nbins
        intensity_name_dict = {}
        df_result_name = []
        df_result_nbins = []
        df_result_site = []
        df_result_intensity = []
        df_result_label = []
        for name in df_p["name"] :
            intensity_name_dict[name] = df_p.loc[df_p["name"] == name].apply(lambda x: get_bw_stat(x,bw,x["nbins"]), axis=1).tolist()[0].tolist()
            nbins = len(intensity_name_dict[name])
            df_result_name += [name] * nbins
            df_result_nbins += [nbins] * nbins
            df_result_site += range(nbins)
            df_result_intensity += intensity_name_dict[name]
            df_result_label += [label] * nbins

        # print(len(df_result_name), len(df_result_intensity)) # is the same 
        df_result = pd.DataFrame()
        df_result['name'] = df_result_name
        df_result['nbins'] = df_result_nbins
        df_result['site'] = df_result_site
        df_result['intensity'] = df_result_intensity
        df_result['label'] = df_result_label

    df_result.to_csv('test1', sep="\t")
    return df_result

def split_df_bed(df_bed,upstream,downstream):
    df_upper=deepcopy(df_bed)
    df_upper["start"]=df_bed.apply(lambda x: x["start"]-upstream if x["strand"]=="+" else x["end"],axis=1)
    df_upper["end"]=df_bed.apply(lambda x: x["start"] if x["strand"]=="+" else x["end"]+upstream,axis=1)

    df_down=deepcopy(df_bed)
    df_down["start"]=df_bed.apply(lambda x: x["end"] if x["strand"]=="+" else x["start"]-downstream,axis=1)
    df_down["end"]=df_bed.apply(lambda x: x["end"]+downstream if x["strand"]=="+" else x["start"],axis=1)

    return df_upper,df_bed,df_down

def output(df:pd.DataFrame,name):
    if name=="std":
        print(df.to_csv(sep="\t",index=False))    
    else:
        df.to_csv(name,sep="\t",index=False)
    return True

def process(args):
    try:
        df_bed= pd.read_csv(args.bed,sep="\t",comment="#",usecols=range(0,6),header=None)
    except:
        df_bed= pd.read_csv(args.bed,sep="\t",comment="#",header=None)
        logger.warning(f"input bed has ONLY {len(df_bed.columns)} cols, incomplete!")
        if len(df_bed.columns)<3:
            logger.error(f"Input bed must contain at least 3 cols! check it ! {args.bed}")
            sys.exit(1)

        if len(df_bed.columns)==3:
            df_bed.columns=["chr","start","end"]
            project=os.path.split(args.bed)[1].split(".")[0]
            df_bed["name"]=[f"{project}_{i+1}" for i in range(len(df_bed))]
            logger.warning(f"treat {project}_ as prefix of 4th col")
        if len(df_bed.columns)==4:
            df_bed.columns=["chr","start","end","name"]
            df_bed["score"]="."
            logger.warning("treat 5th(score) as '.' ")

        if len(df_bed.columns)==5:
            df_bed.columns=["chr","start","end","name","score"]
            df_bed["strand"]="+"
            logger.warning("treat all region on + strand!")
        logger.info("example table below: ")
        example_table=df_bed[:10].to_csv(sep="\t").replace("\n","\n## ")
        print("## "+example_table)
    logger.info("region bed file is loaded  ...")
    assert isinstance(df_bed,pd.DataFrame)
    df_bed.columns=["chr","start","end","name","score","strand"]
    bw=pbw.open(args.bw)

    labels=["0","1","2"]
    results=[]
    bins=[args.bins_5,args.bins,args.bins_3]
    logger.info("start to split and process each regions ...")
    for df, label, nbin in zip(split_df_bed(df_bed,args.upstream,args.downstream),labels,(args.bins_5,args.bins,args.bins_3)):
        if nbin==0:
            logger.warning(f"skip label {label} becaus bins num is 0")
            continue
        logger.info(f"start to process label {label} part")
        new_df=process_each_part(df,bw,nbin,label,bylen=args.bylen)
        results.append(new_df)
        new_df==None
        logger.info(f"label {label} part is processed!")

    df_result=pd.concat(results).fillna(value="nan").sort_values(by=["name","label","site"])
    logger.info("prepare to output")
    output(df_result,args.outname)
    logger.info("output over! see you ~")
    return df_result
    

if __name__=='__main__':
    opt=generate_opt()
    args=opt.parse_args()
    logger.info("validating opts input ...")
    validate_opt(args)
    logger.info("input options pass check!")
    process(args)
