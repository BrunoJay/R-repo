#set working dir
setwd("C:/Users/BRUNO ZOE/Desktop/R practice")

#Load library
library(plotrix)

healthData<- read.csv(file = "foods.csv", header = TRUE, sep = ",")
info = head(healthData)
print(info)

#labels
label= info$Item_Type
label= paste(label, chart)
label= paste(label, "%", sep = "")

chart= round(info$Item_MRP/sum(info$Item_MRP)*100)

pie3D(info$Item_MRP, 
      main = "Piechart showing MRP of different types of Products",
      labels = label, 
      explode = 0.15,
      col= c("blue", "orange", "green", "red", "purple", "yellow"))
