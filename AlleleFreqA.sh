#!/bin/bash
#SBATCH -J AlleleFreq
#SBATCH --ntasks 1
#SBATCH --mem 5GB
#SBATCH --qos castles
#SBATCH -t 48:00:00

module purge; module load bluebear
module load BCFtools/1.10.2-GCC-9.3.0

bcftools view -R chr1_snplist -S EmirateA.txt chr1.final.vcf.gz | bcftools query -f '%CHROM %POS %AN %AC{0}\n' | awk '{printf "%s %s %f\n",$1,$2,$4/$3}' > chr1_allelefreq

bcftools view -R chr2_snplist -S EmirateA.txt chr2.final.vcf.gz | bcftools query -f '%CHROM %POS %AN %AC{0}\n' | awk '{printf "%s %s %f\n",$1,$2,$4/$3}' > chr2_allelefreq
                                                 
bcftools view -R chr4_snplist -S EmirateA.txt chr4.final.vcf.gz | bcftools query -f '%CHROM %POS %AN %AC{0}\n' | awk '{printf "%s %s %f\n",$1,$2,$4/$3}' > chr4_allelefreq
                                                  
bcftools view -R chr6_snplist -S EmirateA.txt chr6.final.vcf.gz | bcftools query -f '%CHROM %POS %AN %AC{0}\n' | awk '{printf "%s %s %f\n",$1,$2,$4/$3}' > chr6_allelefreq
                                              
bcftools view -R chr7_snplist -S EmirateA.txt chr7.final.vcf.gz | bcftools query -f '%CHROM %POS %AN %AC{0}\n' | awk '{printf "%s %s %f\n",$1,$2,$4/$3}' > chr7_allelefreq
                                                  
bcftools view -R chr22_snplist -S EmirateA.txt chr22.final.vcf.gz | bcftools query -f '%CHROM %POS %AN %AC{0}\n' | awk '{printf "%s %s %f\n",$1,$2,$4/$3}' > chr22_allelefreq         