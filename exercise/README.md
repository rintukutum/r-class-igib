# Exercise
- Q1. Which one of the following is a factor?
```{}
1. a <- ''
2. a <- 'a'
3. a <- 1
4. none of above
```

- Q2. Which one of the following is a empty list?
```{}
1. A <- list()
2. A <- list(c())
3. A <- list(list())
4. none of above
```

- Q3. Add the correct syntax to run the following code?

```{}
hello <- LETTER[10:20]
for( i in 1:hello){
   print(hello[i])
}
```

- Q4. What is the number of iteration for above `for` loop after fixing the bug?
```{}
1. 10
2. 9
3. 11
4. 12
```

- Q5. Fix the syntax for following function for factor to character or numeric?
```{}
fac2charNum <- funtion(x){
    # factor to character
    status <- is.factor(x)
    if(status){
	x.c < as.character(x)

    }el{
	x.c <- x
    }
    # character to numeic
    x.n <- as.numeric(x.c)
    status <- any(!is.na(x.n))
    if(!status){
       out <- x.c
    }else{
       out <- as.numeric(-x.n)
    }
    return(out)
}

```

