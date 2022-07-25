#!/bin/bash
#SBATCH -J admixture
#SBATCH --mem 15G
#SBATCH --qos castles
#SBATCH --array 1-9
#SBATCH -t 48:00:00


module purge; module load bluebear

echo Starting task $SLURM_ARRAY_TASK_ID

ID=$(seq 2 10 | head -n $SLURM_ARRAY_TASK_ID | tail -n 1)

/rds/projects/h/haberm-emirates/cxh153/ADMIXTURE/dist/admixture_linux-1.3.0/admixture AD2463.pruned.bed ${ID} -j12 --cv