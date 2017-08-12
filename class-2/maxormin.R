maxormin<- function(mat){
n <- 1
for(i in  1:nrow(mat)){
  for(j in 1:ncol(mat)){
    if(is.na(mat[i,j]) == TRUE){
      # NO OPERATION
    }else{
      if(n == 1){
        min <- mat[i,j]
        max <- mat[i,j]
        n <- n+1
      }else{
        if (mat[i,j]<min){
          min<- mat[i,j]
        }
        if(mat[i,j]>max){
          max<- mat[i,j]
        }
      }
        
      }
    }
    
}
  output <- c(min, max)
  names(output) <- c("min","max")
  return(output)
}
