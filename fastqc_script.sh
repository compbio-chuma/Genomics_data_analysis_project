#!/bin/bash
# FastQC quality check for raw FASTQ files
# Input: raw_data/DRR589145_1.fastq.gz and raw_data/DRR589145_2.fastq.gz
# Output: FastQC reports in outputs/
fastqc DRR589145_1.fastq DRR589145_2.fastq -o ~/bioinformatics_projects/outputs

echo "fastqc completed"

