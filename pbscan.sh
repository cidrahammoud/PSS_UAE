#!/bin/bash
#SBATCH -J PBSCAN1418
#SBATCH --qos castles
#SBATCH --mem 70GB
#SBATCH --array 1-2
#SBATCH -t 48:00:00

module purge; module load bluebear
module load BCFtools/1.10.2-GCC-9.3.0

echo Starting task $SLURM_ARRAY_TASK_ID

#run in pairs to avoid memory problems for all chromosomes 

ID=$(seq 5 6 | head -n $SLURM_ARRAY_TASK_ID | tail -n 1)

/rds/projects/h/haberm-emirates/cxh153/VCF/PBScan/pbscan -vcf chromosome${ID}.final.vcf -pop1 EmirateA.txt -pop2 EmirateB.txt -pop3 Telugu.txt -out output2.final${ID}