# Download the data using SRA Toolkit
mkdir -p ~/bioinformatics_projects/raw_data
cd ~/bioinformatics_projects/raw_data
fastq-dump --split-files DRR589145

echo "Download complete! File saved in current directory"
