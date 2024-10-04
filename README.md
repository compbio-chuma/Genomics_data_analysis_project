# Genomic Data Analysis Project: Variant Calling Pipeline with DRR589145

## Project Overview
This project aims to analyze genomic data using a bioinformatics pipeline that includes quality control, trimming, alignment, variant calling, and output documentation. We use a publicly available dataset from the DRR589145 sample for this analysis.
The pipeline utilizes several key bioinformatics tools such as FastQC for quality control, Trimmomatic for trimming and filtering, BWA for aligning the reads to a reference genome, Samtools for working with SAM/BAM files, and bcftools for variant calling. The final output includes the identified variants in VCF format.

### Tools and Software Used:
* SRA Toolkit: For downloading sample data
*	FastQC (v0.11.9): For assessing the quality of raw sequencing reads.*	Trimmomatic (v0.39): For trimming and filtering low-quality reads.
*	BWA (v0.7.17): For aligning the reads to a reference genome.
*	Samtools (v1.13): For working with SAM and BAM file formats.
*	bcftools (v1.13): For variant calling.

### Pipeline Workflow:
1.	Data Download
2.	Quality Assessment (FastQC)
3.	Quality Control and Trimming (Trimmomatic)
4.	Alignment to Reference Genome (BWA)
5.	Convert SAM to BAM, Sort and Index (Samtools)
6.	Variant Calling (bcftools)
7.	Visualization and Result Analysis
8.	Documentation and Upload to GitHub
   
### Dataset Information:
1.	#### Sample ID: 
DRR589145

2.	#### Data Source:
[NCBI SRA DATABASE]( https://trace.ncbi.nlm.nih.gov/Traces/?view=run_browser&acc=DRR589147&display=download)

3.	#### Data Type: 
Paired-end sequencing data in FASTQ format.

4.	#### Reference Genome: 
Escherichia coli (GCA_000005845.2_ASM584v2_genomic.fna). File uploaded.

## Project Structure
bioinformatics_projects/
│
├── raw_data/                 Contains raw FASTQ files (input data)
│   ├── DRR589145_1.fastq
│   └── DRR589145_2.fastq
│
├── trimmed_data/             Contains trimmed FASTQ files
│   ├── DRR589145_1_paired.fastq
│   └── DRR589145_2_paired.fastq
│
├── aligned_data/             Contains BAM, BAI, and SAM files
│   ├── DRR589145_aligned.sam
│   └── DRR589145_aligned_sorted.bam
│
├── variants/                 Contains variant call files (VCF and BCF)
│   ├── DRR589145_raw.bcf
│   └── DRR589145_variants.vcf
│
├── scripts/                  Contains pipeline scripts (.sh)
│   ├── fastqc.sh
│   ├── trimmomatic.sh
│   ├── bwa_alignment.sh
│   ├── samtools.sh
│   └── variant_calling.sh
│
├── outputs/                  Logs and additional output files
│   ├── trimmomatic_log.txt
│   ├── fastqc_report.html
│   └── fastqc_results/
│
├── README.md                 This file
└── .gitignore                Git ignore file to avoid committing large/irrelevant files

## Step-by-Step Procedure
1. #### Data Download
I used the publicly available DRR589145 dataset for this project, downloaded from NCBI's SRA database. The raw paired-end FASTQ files were placed in the raw_data/ directory.
The script for this was uploaded

2. #### Quality Assessment (FastQC)
Before proceeding with any filtering or trimming, I assessed the quality of the raw reads using FastQC. This helps identify any issues with sequencing quality, such as low-quality bases or adapter contamination.
Script and result was uploaded.
The results can be viewed in the FastQC report stored in outputs/*.fastqc/.

3. #### Quality Control and Trimming (Trimmomatic)
Next, I used Trimmomatic to remove low-quality reads, adapter sequences, and other contaminants from the raw data.
Script for Trimmomatic was uploaded.

4. #### Alignment to Reference Genome (BWA)
I aligned the trimmed reads to the reference genome (E. coli) using the Burrows-Wheeler Aligner (BWA).
Alignment script was uploaded.

5. #### Convert SAM to BAM, Sort and Index (Samtools)
I converted the SAM file to a BAM file, sort it, and index it for variant calling.
Scripts for conversion, sorting and indexing was uploaded.

6. #### Variant Calling (bcftools)
I used bcftools to call variants from the aligned data, outputting in VCF format.
Script for variant calling was uploaded.

7. #### Visualization and Result Analysis
The results of the variant calling are stored in variants/DRR589145_variants.vcf (uploaded). You can use visualization tools such as IGV (Integrative Genomics Viewer) to visualize the variants in relation to the reference genome.

## Results
After completing the pipeline, the following are key outputs generated:
•	FASTQC reports: Located in outputs/.
•	Trimmed FASTQ files: Found in trimmed_data/. (Too large for upload)
•	Aligned BAM file: Located in aligned_data/DRR589145_aligned_sorted.bam. (Too large for upload)
•	Variant Call Format (VCF) file: Located in variants/DRR589145_variants.vcf.




