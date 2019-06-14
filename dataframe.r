setwd("C:/Users/BRUNO ZOE/Desktop/R practice")

df <- data.frame( c( 183, 85, 40), c( 175, 76, 35), c( 178, 79, 38 )) 
names(df) <- c("Height", "Weight", "Age")
print(df)

# Just First Column with All rows
df[, 1]

#using function
extract <- function(dfname, index){
  dfname[index]
}
extract(df, 1)
