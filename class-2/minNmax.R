minNmax <- function(mat){
  n <- 1
  for(i in  1:nrow(mat)){
    for(j in 1:ncol(mat)){
      #whether NA is present
      if(is.na(mat[i,j]) == TRUE){
        # NO OPERATION
      }else{
        #initiating min and max with first matrix element
        if(n == 1){
          min <- mat[i,j]
          max <- mat[i,j]
          n <- n+1
        }else{
          # update min and max
          if(min > mat[i,j]){
            min <- mat[i,j]
          }
          if(max < mat[i,j]){
            max <- mat[i,j]
          }
        }
      }
    }
  }
  output <- c(min,max)
  names(output) <- c("min","max")
  return(output)
}
