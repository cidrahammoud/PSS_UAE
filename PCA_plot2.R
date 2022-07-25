#!/bin/bash
#SBATCH -J convert
#SBATCH --mem 15G
#SBATCH --ntasks 1
#SBATCH --qos castles
#SBATCH -t 5:00:00

#module purge; module load bluebear
#module load R/3.6.0-foss-2019a
#R

library(RColorBrewer)
#set path to this file in case want to run again
a= read.table("AD2463.pca.evec", header=F)
b= read.delim("pop_info_710K_SNPstxt.txt", na.strings = "", header=TRUE, sep = "\t")

library(ggplot2)
theme_set(
  theme_bw() +
    theme(legend.position = "top"))

#create an empty list
IDlist= rep(NA, 2463)

#create an empty dataframe
C <- data.frame(matrix(ncol = 15, nrow = 0))

for (i in 1:2463){
  #for each ID in evec dataset, extract the IDs and add them to the list 
  IDlist[i]= a[i,1]
  
  #then extract the row with each ID from pop_info data and it to the newly created dataset
  C=rbind(C, b[b$FID == IDlist[i],])
}

#plot(a$V2,a$V3, col= C$AD_pops ,pch=20, xlab="PC1", ylab="PC2")
write.csv(C,"PCA_data")

#library(readr)
#PCA_data <- read_csv("PCA_data")
#View(PCA_data)

Population= PCA_data$AD_pops
Emirate= PCA_data$Emirate

#png("Principal Component Analysis_3.png", res=300, width=5, height=5, units="in", type="cairo")
display.brewer.all(colorblindFriendly = TRUE)

a$emirate <- PCA_data$Emirate
Emirate <- a$emirate
attach(a)
a <- a[order(a$emirate, decreasing = T),]
a$Emirate = as.factor(a$emirate)
  
png("Principal Component Analysis.png", res=300, width=6, height=5, units="in", type="cairo")
ggplot(a, aes(V2,V3), xlab="PC1", ylab="PC2" )+ 
  geom_point(aes(col= Emirate),size=0.7) +
  ggtitle("Principal Component Analysis") +
  xlab("Principal Component 1") + ylab("Principal Component 2") +
  theme(legend.key.size = unit(0.2, 'cm'))+
  theme(legend.position = "bottom")+  scale_colour_brewer(palette = "Dark2")
dev.off()
#set2 or dark2

################################

png("Principal Component Analysis.png", res=300, width=5, height=5, units="in", type="cairo")
ggplot(a, aes(V2,V3), xlab="PC1", ylab="PC2")+ 
  geom_point(aes(col= Population),size=0.7)+
  ggtitle("Principal Component Analysis") +
  xlab("Principal Component 1") + ylab("Principal Component 2") +
  theme(legend.key.size = unit(0.4, 'cm'))+
  theme(legend.position = "bottom")+  scale_colour_brewer(palette = "Paired")

dev.off()
