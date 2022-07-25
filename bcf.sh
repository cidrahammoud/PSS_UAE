#!/bin/bash
#SBATCH -J bcf
#SBATCH --mem 20G
#SBATCH --ntasks 4
#SBATCH --qos castles
#SBATCH -t 48:00:00


module purge; module load bluebear
module load BCFtools/1.10.2-GCC-9.3.0

bcftools view -r ch22:44121400-50333170 chr22.final.vcf