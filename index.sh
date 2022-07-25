#!/bin/bash
#SBATCH -J SNPdetails
#SBATCH --ntasks 1
#SBATCH --mem 5GB
#SBATCH --qos castles
#SBATCH -t 48:00:00

module purge; module load bluebear
module load BCFtools/1.10.2-GCC-9.3.0

bcftools index chr2.final.vcf.gz