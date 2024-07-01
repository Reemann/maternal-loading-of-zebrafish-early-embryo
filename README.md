# Screening of functional maternal-specific chromatin regulators in early embryonic development

## Dependencies

### Softwares

- Python3 (≥3.6)
- Cutadapt (3.7)
- FastQC (≥0.11.4)
- TrimGalore (0.6.5)
- HISAT2 (2.1.0)
- StringTie (1.3.3b)
- ComBat-seq (3.36.0)
- GFOLD (1.1.4)
- SAMtools (1.6)
- BEDtools (2.27.1)
- MACS2 (2.1.1.20160309)

### Input & Source Files

- **Public Raw Sequencing Data:** Can be downloaded using the script located at `1_screening_public_RNA-seq_data/step1_download.sh`.

- **Private Raw Sequencing Data:** Available from the GSA database under the accession number CRA010494.

- **Source Files for Sequencing Data Processing:** These files are located in `genome_danRer11_2`:
  - **ENSEMBL Annotation File:** Optional file `danRer11_2.ensGene.gtf` located in `genome_danRer11_2/ensGene`.
  - **Chromosome Size Files:** `danRer11_2.chrom.sizes` and `genome_danRer11_2_main.chrom.sizes` are available at the same directory as above.


## Code Files

- **Public RNA-seq Data Analysis:**
  - Scripts for screening maternal factors using public RNA-seq data (related to Part I of the article results) are located in `1_screening_public_RNA-seq_data`.
  
- **Private RNA-seq Data Analysis:**
  - Scripts for analyzing private RNA-seq data (related to Part IV of the article results) are found in `2_private_RNA-seq_data_analysis`.
  
- **Whole-Genome Sequencing (WGS) Data Analysis:**
  - Scripts for analyzing WGS data (related to Part IV of the article results) are available in `3_WGS_data_analysis`.
 
- **Small utilities:**
  - Scripts and tools for small utilities used throughout the screening and analysis processes are collected in `basic_utilities`.


## Citation:
**Wang Y\*, Wang X\*, Wang W, Cao Z, Zhang Y$, Liu G$**. 2024. Screening of functional maternal-specific chromatin regulators in early embryonic development. *Under Review*.
