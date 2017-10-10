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

```
