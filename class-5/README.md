# class 5

We are going to create a `list` that contain multiple vectors. Each `vector` contain informations
about a student with their name, age, fellowship, year and department.

## Steps

- open R
- create a list name called `infoIGIB`.
```{R}
infoIGIB <- list()

```
- now add information about a student. 
  Example, here `A` is a vector with 5 elements namely, `name`, `age`, `fellowship`, `year` and `department`.
  We can access each of them using `[ ]` symbol `['name']`, `A['name']` which will give us `A` as output.
```{R}
A <- c('name' = 'A',
       'age' = 28,
       'fellowship' = 'F1',
       'year' = 2012,
       'department' = 'D1')
# access information 
A['name']

# or 
A[1]

# print using for loop

for( i in 1:length(A)){
	print(A[i])
}

```
- add more students information using `sample` function
```{R}
set.seed(123)
# do `?set.seed` for more information

name = sample(x = LETTERS, size = 1)
# do `?sample` for more information

age = sample(x = 22:28, size = 1)
fellowship = sample(x = c('F1','F2','F3','F4'), size = 1)
year = sample(x = c(2010:2016), size = 1)
department = sample(x = c('D1','D2','D3','D4'), size = 1)
student <-c(
    name = name,
    age = age,
    fellowship = fellowship,
    year = year,
    department = department
)

```
- convert above into a function
```{R}
genearteStudentInfo <- function(seed){
	set.seed(seed)
	# do `?set.seed` for more information

	name = sample(x = LETTERS, size = 1)
	# do `?sample` for more information

	age = sample(x = 22:28, size = 1)
	fellowship = sample(x = c('F1','F2','F3','F4'), size = 1)
	year = sample(x = c(2010:2016), size = 1)
	department = sample(x = c('D1','D2','D3','D4'), size = 1)
	student <-c(
		name = name,
		age = age,
		fellowship = fellowship,
		year = year,
		department = department
	)
	return(student)
}

genearteStudentInfo(seed = 123)
```

- include all the student information into `infoIGIB` list
    - use `for` loop
```{R}
for( i in 1:100){

}

```
- now extract information
