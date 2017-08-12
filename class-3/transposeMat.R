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












