#DNAorRNA <- function (sequence){
#stringsplit
#sq <- strsplit(sequence, split='')[[1]]
#i <- 1
#for (i in length(sq)){
#	if (sq [i]=='U'){
#     output <- 'RNA'
#     }
#	else{
#    ouput <- 'DNA'
#	}
#return(output)
#}
DNAorRNA <- function (sequence){
sequence <- toupper(sequence)
nuc <- strsplit(sequence, split='')[[1]]
 if (length(nuc) == 0){
 stop ("No sequence available")
  }
#If T and U are not a part of the sequence
conflictsq <- intersect (c('T', 'U'), nuc)
  if(length(conflictsq)==0){
  output <- "DNA or RNA"
  }
   else{
    rna <- length(which(nuc == 'U'))
	  if (rna >= 1){
	  rna.nuc <- c('A', 'U', 'C', 'G')
	   if (length(setdiff (nuc, rna.nuc))==0){
	    output <- 'RNA'
	    }
	   else{
	   output <- "Given sequence is not correct"
	   }
	}
	 else{
	 dna.nuc <- c('A', 'T', 'C', 'G')
	 if (length(setdiff (nuc, dna.nuc))==0){
	 output <- 'DNA'
	 }
	 else{
	 output <- "Given sequence is not correct"
	 }
	 }
	 }
return(output)
}