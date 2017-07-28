dnaCount.func <- function(DNA){
	nuc <- c('A','T','G','C')
	# empty vector
	nuc.count <- c()
	# step 1: split vector
	dna.split <- strsplit(DNA, split='')
	# step 2: list to vector
	dna.split.v <- dna.split[[1]]
	for( pos in 1:4 ){
		# step 3: match with G
		output <- dna.split.v == nuc[pos]
		# step 4: which
		pos.nuc <- which(output)
		# step 5: length
		count.nuc <- length(pos.nuc)
		nuc.count[pos] <- count.nuc
	}
	names(nuc.count) <- nuc
	#print(nuc.count)
	return(nuc.count)
}