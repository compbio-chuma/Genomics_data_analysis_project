#!/bin/bash
# BWA alignment
# Input: raw_data/DRR589145_1.fastq.gz and raw_data/DRR589145_2.fastq.gz
# Output: aligned_data/DRR589145_aligned.sam

#Download the reference genome
cd ~/bioinformatics_projects/raw_data
wget ftp://ftp.ncbi.nlm.nih.gov/genomes/all/GCA/000/005/845/GCA_000005845.2_ASM584v2/GCA_000005845.2_ASM584v2_genomic.fna.gz
gunzip GCA_000005845.2_ASM584v2_genomic.fna.gz

#Index the reference genome
bwa index GCA_000005845.2_ASM584v2_genomic.fna

#Align reads using BWA
bwa mem GCA_000005845.2_ASM584v2_genomic.fna \
~/bioinformatics_projects/trimmed_data/DRR589145_1_paired.fastq ~/bioinformatics_projects/trimmed_data/DRR589145_2_paired.fastq \
> ~/bioinformatics_projects/aligned_data/DRR589145_aligned.sam \
2> ~/bioinformatics_projects/outputs/bwa_log.txt

echo "Alignment to the reference genome complete!"

