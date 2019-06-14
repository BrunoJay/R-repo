mat1 = matrix(1:9,ncol=3,byrow=TRUE)
mat2 = matrix(10:19, ncol=3, byrow = TRUE)
print(mat1)
print(mat2)

arry <- array(c(mat1, mat2), dim = c(3,3,2))
print(arry)
as.vector(arry)
#as.vector(t(mymat))