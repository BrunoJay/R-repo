#using dataset "cars"
plot(cars)
title(main = "Scatter graph showing distance against speed")
plot(y=cars$dist, x=cars$speed)

#draw smooth scatter
scatter.smooth(y=cars$dist, x=cars$speed)

#make points more bold
scatter.smooth(y=cars$dist, x=cars$speed, lwd='2')
#change color of points
scatter.smooth(y=cars$dist, x=cars$speed, col='red')

#box plotting
boxplot(cars$dist)
boxplot(cars$speed)

#to draw two graphs on one interface
par(mfrow=c(1:2))

#draw the graphs
boxplot(cars$dist, sub=paste("outlier:", boxplot.stats(cars$dist)$out))
boxplot(cars$speed, sub=paste("outlier:", boxplot.stats(cars$speed)$out))

#density graphs
plot(density(cars$dist))
plot(density(cars$dist), main="density distance graph")
polygon(density(cars$dist), col = "blue")

#correlations
cor(x=cars$speed,y=cars$dist)

#plotting a histogram
hist(cars$speed, main = "Histogram showing speed")


#linear models
#y = mx + c
#lm(formular, data)

myfirstmodel <- lm(dist ~ speed, data=cars)
print(myfirstmodel)
