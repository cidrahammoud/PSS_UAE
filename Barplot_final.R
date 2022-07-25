set.seed(0)

dev.new(width=10, height=5, unit="in")
col= c('RoyalBlue','ForestGreen','indianred1','olivedrab1','skyblue',
       'orchid3','midnightblue','green4',
       'indianred3','aquamarine','beige','bisque4','blueviolet','brown1','burlywood','burlywood1','cadetblue','cadetblue1','cadetblue2','cadetblue3','cadetblue4','chartreuse',
       'chartreuse1','chocolate1','coral')

palette(col)

q_matrix2 <- read.table("AD2463.pruned.2.Q")
ord2 <- q_matrix2[order(q_matrix2$V1, q_matrix2$V2),]  
dev.new(width=10, height=5, unit="in")
admixture_plot2 <- barplot(t(as.matrix(ord2)), space=c(0), col=col, xlab="Individual", ylab="Ancestry",main = "K=2", border=NA, las=2,xaxt = "n")

q_matrix3 <- read.table("AD2463.pruned.3.Q")
ord3 <- q_matrix3[order(q_matrix3$V1, q_matrix3$V2, q_matrix3$V3),]  
admixture_plot3 <- barplot(t(as.matrix(ord3)), space=c(0), col=col, xlab="Individual", ylab="Ancestry",main = "K=3", border=NA, las=2, xaxt = "n")

q_matrix4 <- read.table("AD2463.pruned.4.Q")
ord4 <- q_matrix4[order(q_matrix4$V1, q_matrix4$V2, q_matrix4$V3, q_matrix4$V4),]  
admixture_plot4 <- barplot(t(as.matrix(ord4)), space=c(0), col=col, xlab="Individual", ylab="Ancestry",main = "K=4", border=NA, las=2, xaxt = "n")

q_matrix5 <- read.table("AD2463.pruned.5.Q")
ord5 <- q_matrix5[order(q_matrix5$V1, q_matrix5$V2, q_matrix5$V3, q_matrix5$V4, q_matrix5$V5),]  
admixture_plot5 <- barplot(t(as.matrix(ord5)), space=c(0), col=col, xlab="Individual", ylab="Ancestry",main = "K=5", border=NA, las=2, xaxt = "n")

q_matrix6 <- read.table("AD2463.pruned.6.Q")
ord6 <- q_matrix6[order(q_matrix6$V1, q_matrix6$V2, q_matrix6$V3, q_matrix6$V4, q_matrix6$V5,q_matrix6$V6),]  
admixture_plot6 <- barplot(t(as.matrix(ord6)), space=c(0), col=col, xlab="Individual", ylab="Ancestry",main = "K=6", border=NA, las=2, xaxt = "n")

q_matrix7 <- read.table("AD2463.pruned.7.Q")
ord7 <- q_matrix7[order(q_matrix7$V1, q_matrix7$V2, q_matrix7$V3, q_matrix7$V4, q_matrix7$V5,q_matrix7$V6, q_matrix7$V7),]  
admixture_plot7 <- barplot(t(as.matrix(ord7)), space=c(0), col=col, xlab="Individual", ylab="Ancestry",main = "K=7", border=NA, las=2, xaxt = "n")

q_matrix8 <- read.table("AD2463.pruned.8.Q")
ord8 <- q_matrix8[order(q_matrix8$V1, q_matrix8$V2, q_matrix8$V3, q_matrix8$V4, q_matrix8$V5,q_matrix8$V6, q_matrix8$V7, q_matrix8$V8),]  
admixture_plot8 <- barplot(t(as.matrix(ord8)), space=c(0), col=col, xlab="Individual", ylab="Ancestry", main = "K=8",border=NA, las=2, xaxt = "n")

q_matrix9 <- read.table("AD2463.pruned.9.Q")
ord9 <- q_matrix9[order(q_matrix9$V1, q_matrix9$V2, q_matrix9$V3, q_matrix9$V4, q_matrix9$V5,q_matrix9$V6, q_matrix9$V7, q_matrix9$V8, q_matrix9$V9),]  
admixture_plot9 <- barplot(t(as.matrix(ord9)), space=c(0), col=col, xlab="Individual", ylab="Ancestry", main = "K=9", border=NA, las=2, xaxt = "n")

q_matrix10 <- read.table("AD2463.pruned.10.Q")
ord10 <- q_matrix10[order(q_matrix10$V1, q_matrix10$V2, q_matrix10$V3, q_matrix10$V4, q_matrix10$V5,q_matrix10$V6, q_matrix10$V7, q_matrix10$V8, q_matrix10$V9, q_matrix10$V10),]  
admixture_plot10 <- barplot(t(as.matrix(ord10)), space=c(0), col=col, xlab="Individual", ylab="Ancestry", main = "K=10", border=NA, las=2, xaxt = "n")
