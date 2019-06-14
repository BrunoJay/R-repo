#set working dir
setwd("C:/Users/BRUNO ZOE/Desktop/R practice")

healthData<- read.csv(file = "foods.csv", header = TRUE, sep = ",")
print(healthData)
print(healthData$Item_Weight)
print(healthData$Item_Outlet_Sales)

#summary(healthData)

mymodel<- glm(Item_Visibility ~ Item_Weight, data = healthData, family = binomial)
summary(mymodel)
print(mymodel)
