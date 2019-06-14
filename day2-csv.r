#set working directory
setwd("C:/Users/BRUNO ZOE/Desktop/R practice")

#read file
data <- read.csv(file="Book1.csv", header=TRUE, sep=",")
print(data)

#check if file has data
print(is.data.frame(data))

#print number of columns
print(ncol(data))

#print number of rows
print(nrow(data))

# Get the max salary from data frame.
sal <- max(data$salary)
print(sal)

# Get the person detail having max salary.
retval <- subset(data, salary == max(salary))
print(retval)

#Get all persons in IT department
retval <- subset( data, dept == "IT")
print(retval)

#Get all persons in IT department and with salaries above 600
info <- subset(data, salary > 600 & dept == "IT")
print(info)
print(retval)

#Get all who joined after 2014
retval <- subset(data, as.Date(start_date) > as.Date("2014-01-01"))
print(retval)

#Write into the csv file

# Create a data frame.
data <- read.csv("input.csv")
retval <- subset(data, as.Date(start_date) > as.Date("2014-01-01"))

# Write filtered data into a new file.
write.csv(retval,"output.csv")
newdata <- read.csv("output.csv")
print(newdata)