#!/bin/bash
#SBATCH -J admixture
#SBATCH --mem 15G
#SBATCH --ntasks 12
#SBATCH --qos castles
#SBATCH --array 1-17
#SBATCH -t 48:00:00


module purge; module load bluebear

echo Starting task $SLURM_ARRAY_TASK_ID

ID=$(seq 6 23 | head -n $SLURM_ARRAY_TASK_ID | tail -n 1)

/rds/projects/h/haberm-emirates/cxh153/ADMIXTURE/dist/admixture_linux-1.3.0/admixture subset_final.pruned.bed ${ID} -j12 --cv 