#!/bin/bash
# BCFtools variant calling
# Input: aligned_data/DRR589145.mpileup
# Output: variants/DRR589145_raw.bcf

bcftools call -mv -Ov -o ~/bioinformatics_projects/variants/DRR589145_variants.vcf \
~/bioinformatics_projects/variants/DRR589145_raw.bcf \
2> ~/bioinformatics_projects/outputs/bcftools_call_log.txt


