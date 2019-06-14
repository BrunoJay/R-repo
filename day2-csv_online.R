#set working directory
setwd("C:/Users/BRUNO ZOE/Desktop/R practice")

data <- read.csv(file="acs_or.csv",header=TRUE,sep=",")
print(data)

print(data$age_wife < data$age_husband)
mean(data$age_husband)
median(data$age_husband)
max(data$age_husband)
quantile(data$age_wife)
var(data$age_husband)
sd(data$age_husband)

library("gplots")
plot(x=data$age_wife, y=data$income_wife)

