multiplicationMat <- function(A,B){
	nRow <- nrow(A)
	nCol <- ncol(B)
	nInnerA <- ncol(A)
	nInnerB <- nrow(B)

	if (nInnerA != nInnerB){
		stop("Number of columns of first matrix doesn't equal to number of rows of second matrix!!!")
	}

	# empty matrix
	newMat <- matrix(data = NA, ncol = nRow, nrow = nCol)

	for(Row in 1:nRow){
		for(Col in 1:nCol){
			sum = 0
			for (inner in 1:nInnerA){
				sum = sum + (A[Row,inner]*B[inner,Col])
			}
			newMat[Row, Col] <- sum 
		}
	}
	return(newMat)

}
