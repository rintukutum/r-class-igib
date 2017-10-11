# class 7

We are going to learn today about how to write and read content in R.

## write
```{}
rm(list=ls())
load('./data/dat3.RData')

# segregate infomation using department

# empty list
depart.l <- list()

# get no. of departments
departments <- unique(dat3$department)

for( i in 1:length(departments)){
    # find the index for a department
    idx <- dat3$department == departments[i]
    depart.l[[i]] <- dat3[idx, ]
}
names(depart.l) <- departments
# get Age
getAge <- function(x){
   age <- x$age
   return(age)  
}

# lapply to extract age
age.depart <- lapply(depart.l, getAge)


```
