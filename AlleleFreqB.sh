#!/bin/bash
#SBATCH -J AlleleFreqB
#SBATCH --ntasks 1
#SBATCH --mem 5GB
#SBATCH --qos castles
#SBATCH -t 48:00:00

module purge; module load bluebear
module load BCFtools/1.10.2-GCC-9.3.0

bcftools view -R chr1_snplist -S EmirateB.txt chr1.final.vcf.gz | bcftools query -f '%CHROM %POS %AN %AC{0}\n' | awk '{printf "%s %s %f\n",$1,$2,$4/$3}' > chr1_allelefreqB

bcftools view -R chr2_snplist -S EmirateB.txt chr2.final.vcf.gz | bcftools query -f '%CHROM %POS %AN %AC{0}\n' | awk '{printf "%s %s %f\n",$1,$2,$4/$3}' > chr2_allelefreqB
                                                 
bcftools view -R chr4_snplist -S EmirateB.txt chr4.final.vcf.gz | bcftools query -f '%CHROM %POS %AN %AC{0}\n' | awk '{printf "%s %s %f\n",$1,$2,$4/$3}' > chr4_allelefreqB
                                                  
bcftools view -R chr6_snplist -S EmirateB.txt chr6.final.vcf.gz | bcftools query -f '%CHROM %POS %AN %AC{0}\n' | awk '{printf "%s %s %f\n",$1,$2,$4/$3}' > chr6_allelefreqB
                                              
bcftools view -R chr7_snplist -S EmirateB.txt chr7.final.vcf.gz | bcftools query -f '%CHROM %POS %AN %AC{0}\n' | awk '{printf "%s %s %f\n",$1,$2,$4/$3}' > chr7_allelefreqB
                                                  
bcftools view -R chr22_snplist -S EmirateB.txt chr22.final.vcf.gz | bcftools query -f '%CHROM %POS %AN %AC{0}\n' | awk '{printf "%s %s %f\n",$1,$2,$4/$3}' > chr22_allelefreqB         