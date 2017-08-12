# transpose matrix
transpose <- function(mat){
	# find dimension of the given matrix
	# Dim <- dim(mat)
	nCol <- ncol(mat)
	nRow <- nrow(mat)
	# create an empty matrix
	# empty.mat <- matrix(data = NA, nrow = Dim[2], ncol = Dim[1])
	empty.mat <- matrix(data = NA, nrow = nCol, ncol = nRow)
	# loop through original matrix and assign to new empty
	for( Row in 1:nRow){
		for( Col in 1:nCol){
			# fill the gap
			empty.mat[Col,Row] <- mat[Row,Col] 
		}
	}
	return(empty.mat)
}

addMat <- function(A, B){
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
			newMat[Row, Col] <- A[Row, Col] + B[Row, Col]
		}
	}
	
	return(newMat)
}

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


divideMat <- function(mat, divide){
	nRow <- nrow(mat)
	nCol <- ncol(mat)
	# empty matrix
	newMat <- matrix(data = NA,
		ncol = ncol(mat),
		nrow = nrow(mat)
	)
	for(Row in 1:nRow){
		for(Col in 1:nCol){
			# fill the gap
			newMat[Row, Col] <- mat[Row, Col]/divide
		}
	}
	return(newMat)
}

multiMat <- function(mat, multi){
	nRow <- nrow(mat)
	nCol <- ncol(mat)
	# empty matrix
	newMat <- matrix(data = NA,
		ncol = ncol(mat),
		nrow = nrow(mat)
	)
	for(Row in 1:nRow){
		for(Col in 1:nCol){
			# fill the gap
			newMat[Row, Col] <- mat[Row, Col] * multi
		}
	}
	return(newMat)
}

multiple <- function(A,B){
	nRow <- nrow(A)
	nCol <- ncol(B)
	# empty matrix
	newMat <- matrix(data = NA,
		ncol = nRow,
		nrow = nCol
	)
	for(Row in 1:nRow){
		for(Col in 1:nCol){
			# fill the gap
			# get A
			# get B
			newMat[Row, Col] <- 
		}
	}

}






