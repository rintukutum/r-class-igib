############
#writing function to find maximum and minimum
#for this create a vector first
############


############
#minimun function
############

min.func <- function(vec_list){
	i <- 1
	#initialize an variable 
	seed_ele <- vec_list[1]
	#assign first element to a variable
	#while i becomes the last element of the vector do the operation
	while(i < length(vec_list)){
		#if first element is greater than next element
		if(seed_ele > vec_list[i+1]){
			# replace seed_ele with next element
			seed_ele <- vec_list[i+1]
			}
		if(seed_ele == vec_list[i+1]){
			seed_ele <- seed_ele
			}
		else{
			# otherwise seed_ele will be the same 
			seed_ele <- seed_ele
			}
		#increase i by 1
		i<-i+1
		}
	# format output
	out <- paste('minimum value = ', seed_ele, sep= '')
	return(print(out))
	}


#############
#maximum function
#############

# steps for maximum function will be same except only 1 step where if condition will be change
max.func <- function(vec_list){
	i <- 1
	seed_ele <- vec_list[1]
	while(i < length(vec_list)){
		#if first element is less than next element
		if(seed_ele < vec_list[i+1]){
			seed_ele <- vec_list[i+1]
			}
		if(seed_ele == vec_list[i+1]){
			seed_ele <- seed_ele
			}
		else{
			seed_ele <- seed_ele
			}
		i<-i+1
		}
	out <- paste('maximum value = ', seed_ele, sep= '')
	return(print(out))
	}

n<- readline(prompt="Enter values : ")

if(n == ''){
	n<- readline(prompt="Enter values : ")
	} else{
		vec_list <-strsplit(n,split=',')[[1]]
		vec_list <- as.integer(vec_list)
		if(all(is.na(vec_list)) == TRUE){
			print('wrong value has given, please enter integer value')
			n<- readline(prompt="Enter values : ")
			vec_list <-strsplit(n,split=',')[[1]]
			vec_list <- as.integer(vec_list)
			f<-readline(prompt="What you want to find min or max?: ")
			if (f == 'min'){
				min.func(vec_list)
				} else{
					max.func(vec_list)
					}
				} else{
					vec_list <-strsplit(n,split=',')[[1]]
					vec_list <- as.integer(vec_list)
					f<-readline(prompt="What you want to find min or max?: ")
					if (f == 'min'){
						min.func(vec_list)
						} else{
							max.func(vec_list)
							}
						}
					}
