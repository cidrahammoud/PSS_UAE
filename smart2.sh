#!/bin/bash
#SBATCH -J smartpca
#SBATCH --mem 15G
#SBATCH --ntasks 1
#SBATCH --qos castles
#SBATCH -t 5:00:00


module purge; module load bluebear
module load EIGENSOFT/7.2.1-foss-2020a

smartpca -p smart2.par