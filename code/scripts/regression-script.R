# read in data 
advertising <- read.csv("../../data/Advertising.csv")

# fit model
advertising_lm<-lm(Sales~TV+Radio+Newspaper,
                   data=advertising)
sum_advertising_lm<-summary(advertising_lm)

# save .RData

save(sum_advertising_lm, 
     file = "../../data/regression.RData")

# plots

png(file="../../images/residual-plot.png")
plot(advertising_lm, which = 1)
dev.off()

png(file="../../images/scale-location-plot.png")
plot(advertising_lm, which =2)
dev.off()

png(file="../../images/normal-qq-plot.png")
plot(advertising_lm, which =3)
dev.off()

png(file="../../images/scatterplot-tv-sales.png")
plot(x=advertising$TV,y=advertising$Sales)
dev.off()

png(file="../../images/scatterplot-radio-sales.png")
plot(x=advertising$Radio,y=advertising$Sales)
dev.off()

png(file="../../images/scatterplot-newspaper-sales.png")
plot(x=advertising$Newspaper,y=advertising$Sales)
dev.off()
