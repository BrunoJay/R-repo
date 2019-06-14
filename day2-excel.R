library("xlsx")

data <- read.xlsx(file.choose(), 1, header=TRUE)
print(data)

library("readxl")
data <- read_excel(file.choose())
print(data)
