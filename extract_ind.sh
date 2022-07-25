#!/bin/bash
#SBATCH -J Indfileswitchingcolumnorder
#SBATCH --mem 15G
#SBATCH --ntasks 1
#SBATCH --qos castles
#SBATCH -t 5:00:00


module purge; module load bluebear

awk 'BEGIN{FS=OFS="	"}{print$5,$1}' regions.ind > regions.ind

