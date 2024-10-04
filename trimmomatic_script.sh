#!/bin/bash
# Trimmomatic script for paired-end data
java -jar /usr/share/java/trimmomatic.jar PE -phred33 \
~/bioinformatics_projects/raw_data/DRR589145_1.fastq ~/bioinformatics_projects/raw_data/DRR589145_2.fastq \
~/bioinformatics_projects/trimmed_data/DRR589145_1_paired.fastq ~/bioinformatics_projects/trimmed_data/DRR589145_1_unpaired.fastq \
~/bioinformatics_projects/trimmed_data/DRR589145_2_paired.fastq ~/bioinformatics_projects/trimmed_data/DRR589145_2_unpaired.fastq \
ILLUMINACLIP:/usr/share/trimmomatic/adapters/TruSeq3-PE.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:20 MINLEN:36 \
-trimlog ~/bioinformatics_projects/outputs/trimmomatic_log.txt

echo "Trimmomatic completed. Logs are saved in the outputs directory."

