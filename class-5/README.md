# class 5

We are going to create a `list` that contain multiple vectors. Each vector contain informations
about a student with their name, age, fellowship, year and department.

## Steps

- open R
- create a list name called `infoIGIB`.
```{R}
infoIGIB <- list()

```
- now add information about a student. 
  Example,
```{R}
A <- c('name' = 'A',
       'age' = 28,
       'fellowship' = 'F1',
       'year' = 2012,
       'department' = 'D1')

```
- add more students information using `sample` function
```{R}
set.seed(123)
name = sample(LETTERS,1)
age = sample(22:28,1)
fellowship = sample(c('F1','F2','F3','F4'),1)
year = sample(c(2010:2016),1)
department = sample(c('D1','D2','D3','D4'),1)
student <-c(
    name = name,
    age = age,
    fellowship = fellowship,
    year = year,
    department = department
)

```

- include all the student information into `infoIGIB` list
- now extract information
