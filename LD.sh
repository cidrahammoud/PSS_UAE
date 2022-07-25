#!/bin/bash
#SBATCH -J LD
#SBATCH --ntasks 1
#SBATCH --mem 5GB
#SBATCH --qos castles
#SBATCH -t 48:00:00

module purge; module load bluebear
module load Perl/5.32.1-GCCcore-10.3.0

/rds/projects/h/haberm-emirates/cxh153/VCF/LDBlockShow/bin/LDBlockShow  -InVCF chr2.final.vcf.gz -SubPop EmirateA.txt -OutPut LD_output  -Region  chr2:134584882-136023692 -OutPng
