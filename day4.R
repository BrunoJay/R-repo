#set working dir
setwd("C:/Users/BRUNO ZOE/Desktop/R practice")

#SURVIVAL TEST
library("survival")

data<- read.csv(file = "foods.csv", header = TRUE, sep = ",")

#Create survival object
mysf <- survfit(Surv(data$Item_MRP)~1)

#plot the graph
plot(mysf)

#print(structure(Cars93))
sf <- survfit(Surv(Cars93$Min.Price)~1)
plot(sf)

#Give the chart a file name
png(file = "survival.png")

#save the file
dev.off

#CHI SQUARE TEST
library("MASS")

#print structure of dataset
print(str(Cars93))

#Create data frame from the main data set
car.data <- data.frame(Cars93$AirBags,Cars93$Type)

#Create a table with the needed variables
car.data = table(Cars93$AirBags,Cars93$Type)
print(car.data)

print(chisq.test(car.data))
