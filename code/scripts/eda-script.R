#Read in data
advertising <- read.csv("../../data/Advertising.csv")
advertising <- advertising[,-c(1)]

sink("../../data/eda-output.txt")
paste("Summary of Quantitative Variables")

paste("Mean, Median, 1st and 3rd Quartile, Min, Max")
sapply(advertising, summary, na.rm=TRUE)

paste("SD")
sapply(advertising, sd, na.rm=TRUE)

paste("Range")
sapply(advertising, range, na.rm=TRUE)

paste("IQR")
sapply(advertising, IQR, na.rm=TRUE)

paste("Matrix of Correlations for Quantitative Variables")
cor_mat<-as.matrix(cor(advertising))
cor_mat

sink()

save(cor_mat, file = "../../data/correlation-matrix.RData")

# Scatterplot Matrix

png("../../images/scatterplot-matrix.png")
pairs(advertising)
dev.off()


# Histograms

for (i in 1:ncol(advertising)) {
  png(paste("../../images/histogram-", names(advertising[i]), ".png", sep=""))
  hist(advertising[,i],
          main=paste(names(advertising[i]), "Histogram", sep= " "),
          xlab= paste(names(advertising[i])))
  dev.off()
}
