subMat <- function(A, B){
	nRow <- nrow(A)
	nCol <- ncol(A)
	# empty matrix
	newMat <- matrix(data = NA,
		ncol = ncol(A),
		nrow = nrow(B)
	)
	for(Row in 1:nRow){
		for(Col in 1:nCol){
			# fill the gap
			newMat[Row, Col] <- A[Row, Col] - B[Row, Col]
		}
	}
	return(newMat)
}
