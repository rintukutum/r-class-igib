# class 3

## matrix

```{R}
# empty working space
rm(list=ls())

# create a matrix
mat <- matrix(
	data = 1:6,
	nrow = 3
)

# transpose a matrix
t.mat <- t(mat)

# addition (same dimension) 
mat + mat

# substraction (same dimension)
mat - mat

# multiple or divide
mat * 2

mat / 2

# matrix multiplication
# first matrix #column == second matrix #row
# https://en.wikipedia.org/wiki/Matrix_multiplication
mat %*% t.mat 


# identity matrix
I <- diag(5)

# determinant of a matrix
set.seed(576)
mat <- matrix(sample(1:3,9,TRUE),nrow=3)
det(mat)

# inverse of a matrix
solve(mat)


#################### LINER REGRESSION

```

# resources 

	- [Introduction to matrices](http://www.maths.manchester.ac.uk/~kd/ma2m1/matrices.pdf)
	- [Virtual cell program](http://vcp.med.harvard.edu/teaching.html)
	- [Matrix algebra for beginners part-1](http://vcp.med.harvard.edu/papers/matrices-1.pdf)
	- [Matrix algebra for beginners part-2](http://vcp.med.harvard.edu/papers/matrices-2.pdf)
	- [Matrix algebra for beginners part-3](http://vcp.med.harvard.edu/papers/matrices-3.pdf)

