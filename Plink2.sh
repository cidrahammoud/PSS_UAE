#!/bin/bash
#SBATCH -J Plink
#SBATCH --mem 15G
#SBATCH --ntasks 1
#SBATCH --qos castles
#SBATCH -t 5:00:00

module purge; module load bluebear
module load PLINK/1.9b_6.24-x86_64

#Rsquared 0.2

plink --bfile AD2463 --allow-no-sex --autosome --indep-pairwise 200 25 0.2 --out plink
plink --bfile AD2463 --extract plink.prune.in --make-bed --out AD2463.pruned
