#-----
# class-1
#-----
dnaORrna <- function(sequnce){
	#-----
	# upper
	sequnce <- toupper(sequnce);
	#------
	# ATGC
	# AUGC
	#------
	# sequnce <- 'ATGC'
	# 1. strsplit
	# 2. is there any T --> DNA
	# 3. is there any U --> RNA
	nuc <- strsplit(sequnce, split='')[[1]]
	if(length(nuc) == 0){
		stop('No sequence available')
	}
	#-----
	#conflictSeq <- intersect(
	#		c('T','U'),
	#		nuc)
	#-----
	# setdiff
	conflictSeq <- setdiff(
			c('T','U'),
			nuc)
	#if(length(conflictSeq) == 0){
	if(length(conflictSeq) == 2){
		output <- 'DNA or RNA'
	}else{
		# check for U
		rna <- length(which(nuc == "U"))
		if(rna >= 1){
			rna.nuc <- c('A', 'U', 'G', 'C')
			if(length(setdiff(nuc, rna.nuc)) == 0){
				output <- 'RNA'
			}else{
				output <- 'Given sequence is not correct'
			}
		}else{
			dna.nuc <- c('A', 'T', 'G', 'C')
			if(length(setdiff(nuc, dna.nuc)) == 0){
				output <- 'DNA'
			}else{
				output <- 'Given sequence is not correct'
			}
		}
	}
	return(output)
}
#-----
# class-2 materials
#-----
# create a matrix
mat <- matrix(data = NA, ncol = 2, nrow = 5)

