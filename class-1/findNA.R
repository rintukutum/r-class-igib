for (i in 1:ncol(mat)){
  for (j in 1:nrow(mat){
    if (is.na(mat[j,i]) == T){
	print (dim(mat))
	}
	else{
	print("NO NAs FOUND")
	}
   }
  }
	
#Function to find NAs
findNA <- function(mat){
for (i in 1:ncol(mat)){
  for (j in 1:nrow(mat)){
    if (is.na(mat[j,i]) == TRUE){
		print(paste('column = ', i, ' ',
					'row = ',j,sep='')
					)
	}else{
		
	}
   }
  }
  #return(output)
 }