#!/bin/bash
#SBATCH -J ancpainter
#SBATCH --mem 15G
#SBATCH --ntasks 1
#SBATCH --qos castles
#SBATCH -t 5:00:00

module purge; module load bluebear
module load R/4.1.0-foss-2021a

perl /rds/projects/h/haberm-emirates/cxh153/ANCPAINTER/AncestryPainter_v5/AncestryPainter.pl -i pops_renamed.ind -q subset_final.pruned.16.Q -t UAE -p pop.order
