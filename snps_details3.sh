#!/bin/bash
#SBATCH -J SNPdetails
#SBATCH --ntasks 1
#SBATCH --mem 5GB
#SBATCH --qos castles
#SBATCH -t 48:00:00

module purge; module load bluebear
module load BCFtools/1.10.2-GCC-9.3.0

echo Starting Chr 1

bcftools index chr1.final.vcf.gz
bcftools view -R chr1_snplist chr1.final.vcf.gz | bcftools query -f '%CHROM %POS %REF %ALT\n' > chr1_SNPS_details

echo Starting Chr 2

bcftools index chr2.final.vcf.gz
bcftools view -R chr2_snplist chr2.final.vcf.gz | bcftools query -f '%CHROM %POS %REF %ALT\n' > chr2_SNPS_details

echo Starting Chr 4
							     
bcftools index chr4.final.vcf.gz
bcftools view -R chr4_snplist chr4.final.vcf.gz | bcftools query -f '%CHROM %POS %REF %ALT\n' > chr4_SNPS_details

echo Starting Chr 6

bcftools index chr6.final.vcf.gz
bcftools view -R chr6_snplist chr6.final.vcf.gz | bcftools query -f '%CHROM %POS %REF %ALT\n' > chr6_SNPS_details

echo Starting Chr 7

bcftools index chr7.final.vcf.gz
bcftools view -R chr7_snplist chr7.final.vcf.gz | bcftools query -f '%CHROM %POS %REF %ALT\n' > chr7_SNPS_details

echo Starting Chr 22

bcftools index chr22.final.vcf.gz
bcftools view -R chr22_snplist chr22.final.vcf.gz | bcftools query -f '%CHROM %POS %REF %ALT\n' > chr22_SNPS_details

echo DONE