#!/bin/bash
# Samtools pipeline: Convert SAM to BAM, sort, index, mpileup
# Input: aligned_data/DRR589145_aligned.sam
# Output: aligned_data/DRR589145_sorted.bam, index, and mpileup

# Convert SAM to BAM
samtools view -S -b ~/bioinformatics_projects/aligned_data/DRR589145_aligned.sam \
> ~/bioinformatics_projects/aligned_data/DRR589145_aligned.bam \
2> ~/bioinformatics_projects/outputs/samtools_view_log.txt


# Sort BAM
samtools sort ~/bioinformatics_projects/aligned_data/DRR589145_aligned.bam \
-o ~/bioinformatics_projects/aligned_data/DRR589145_aligned_sorted.bam \
2> ~/bioinformatics_projects/outputs/samtools_sort_log.txt


# Index BAM
samtools index ~/bioinformatics_projects/aligned_data/DRR589145_aligned_sorted.bam \
2> ~/bioinformatics_projects/outputs/samtools_index_log.txt

# Generate mpileup for variant calling
samtools mpileup -f GCA_000005845.2_ASM584v2_genomic.fna \
~/bioinformatics_projects/aligned_data/DRR589145_aligned_sorted.bam \
> ~/bioinformatics_projects/variants/DRR589145_raw.bcf \
2> ~/bioinformatics_projects/outputs/samtools_mpileup_log.txt

 echo "Execution complete"


