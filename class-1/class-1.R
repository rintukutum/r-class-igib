# helllo
#---------
# character vectors
rm(list = ls())

myvec <- c(1,2,3,4,5)
# alternative
assign('newvec', c(1,2,3,4))

# to check about functions
?assign

a <- 'abc'

assign(a, c(1,2,3,4))
#----------------
names(myvec) <- c('a', 'b', 'c', 'd', 'e')

# access through name
myvec[["a"]]
#> 1
# access using index
myvec[2]

#-------
# string operations
rm(list=ls())
myName <- 'RINTU'
insName <- 'IGIB'
# paste function
myInfo <- paste(myName, insName, sep='')

# strsplit function
strsplit(myInfo, split='\\-')
strsplit(myInfo, split='')
#-----------------
# COUNT A, T, G, C
# step 1: strsplit
# step 2: convert list to vector
# step 3: match the vector to "A"
# step 4: which
# step 5: length
# repeat for T, G and C
rm(list=ls())
DNA <- 'ATAGCATAGCATA'

# step 1: split vector
dna.split <- strsplit(DNA, split='')

# step 2: list to vector
dna.split.v <- dna.split[[1]]

# step 3: match with A

output <- dna.split.v == 'A'

# step 4: which
pos.nuc <- which(output)

# step 5: length
count.nuc <- length(pos.nuc)


# step 3: match with G

output <- dna.split.v == 'G'

# step 4: which
pos.nuc <- which(output)

# step 5: length
count.nuc <- length(pos.nuc)

#-----------------

nuc <- c('A','T','G','C')
# empty vector
nuc.count <- c()
for( pos in 1:4 ){
	# Sys.sleep(5)
	# print(pos)
	# step 3: match with G
	output <- dna.split.v == nuc[pos]
	# step 4: which
	pos.nuc <- which(output)
	# step 5: length
	count.nuc <- length(pos.nuc)
	# display.out <- paste( nuc[pos], " count = ", count.nuc, sep='')
	# print(display.out)
	
	nuc.count[pos] <- count.nuc
}
names(nuc.count) <- nuc
print(nuc.count)
#--------------
#
rm(list=ls())
#-----
# following paths will change
setwd('E:\\rintu/office/r-class')
getwd()
list.files()
source("./nuc-count.R")
nuc <- c('A', 'T', 'G', 'C')

mat <- matrix(data =NA, ncol = 4, nrow=5)
for(i in 1:5){
DNA.random <- paste(sample(nuc, 10, replace = TRUE ),
					  collapse = '') 
 mat[i,] <- dnaCount.func(DNA=DNA.random)
}
colnames(mat) <- nuc

####
#### rnaCount.func






































