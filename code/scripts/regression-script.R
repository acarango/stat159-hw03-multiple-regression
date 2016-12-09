# read in data 
advertising <- read.csv("../../data/Advertising.csv")


# 1 variable models
tv_lm<-lm(Sales~TV, data=advertising)
radio_lm<-lm(Sales~Radio, data=advertising)
newspaper_lm<-lm(Sales~Newspaper, data=advertising)

# fit model
advertising_lm<-lm(Sales~TV+Radio+Newspaper,
                   data=advertising)

# save .RData

save(tv_lm, radio_lm, newspaper_lm, advertising_lm, 
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
