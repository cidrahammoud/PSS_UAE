#!/bin/bash
#SBATCH -J pbs
#SBATCH --mem 15G
#SBATCH --qos castles
#SBATCH -t 48:00:00

module purge; module load bluebear

/rds/projects/h/haberm-emirates/cxh153/VCF/PBScan/pbscan -vcf chr22.final.vcf -pop1 EmirateA.txt -pop2 IranA.txt -pop3 Telugu.txt -out output