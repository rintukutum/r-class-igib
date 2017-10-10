# class 6

We are going to continue from our previous exercise. 

```{R}

rm(list=ls()) # remove all variables
load('./data/infoIGIB.RData')
```

## store above information list into data.frame

```{R}
mat <- matrix(data = NA, nrow=100, ncol = 5)

Len <- length(infoIGIB)
for( i  in 1:Len){
    mat[i, ] <- infoIGIB[[i]]
}

dat <- data.frame(mat)

fac2charNum <- function(x){
    # factor to character
    status <- is.factor(x)
    if(status){
	x.c <- as.character(x)

    }else{
	x.c <- x
    }
    # character to numeic
    x.n <- as.numeric(x.c)
    status <- any(is.na(x.n))
    if(status){
       out <- x.c
    }else{
       out <- as.numeric(x.n)
    }
    return(out)
}

#-------
dat2  <- apply(dat, 2, fac2charNum)

dat3 <- dat
for(i in 1:ncol(dat3)){
   dat3[,i] = fac2charNum(dat3[,i])
}
colnames(dat3) <- names(infoIGIB[[1]])
save(dat3, file= './data/dat3.RData')


```
