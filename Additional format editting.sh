#!/bin/bash
#SBATCH -J Rename_SNP_ID 
#SBATCH --mem 15G
#SBATCH --ntasks 1
#SBATCH --qos castles
#SBATCH -t 5:00:00


module purge; module load bluebear

awk 'BEGIN{FS=OFS=" "}{print$1,$1":"$4,$3,$4,$5,$6}' AD2463.pruned.bim > AD2463.pruned.new.bim

