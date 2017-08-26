# Class 4

# find codon frequency for H37Rv bacteria
 
- download CDS
- ftp://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/000/195/955/GCF_000195955.2_ASM19595v2/GCF_000195955.2_ASM19595v2_cds_from_genomic.fna.gz

# read "./test.fa" using readLines function in R


# hints
```{r}
con <- file('./test.fa','r', blocking=FALSE)
#----
myContents <- c()
#----
content <- 1
i <- 1
while(content != 0){
	Lines <- readLines(con, n=1)
	if(length(Lines) != 0){
		myContents[i] <- Lines
		i <- i+1 
	}else{
		content <- 0
	}
}
close(con)

#----
fastaHeaders <- grep('>', myContents)
Seqs <- list()
for(i in seq_along(fastaHeaders)){
	if(i != length(fastaHeaders)){
		# for all seq except last
		Seqs[[i]] <- myContents[fastaHeaders[i]:(fastaHeaders[i+1]-1)]
	}else{
		# for last seq
		Seqs[[i]] <- myContents[fastaHeaders[i]:length(myContents)]
	}
}

convertFasta <- function(x){
	header <- x[1]
	seq <- paste(x[-1],collapse='')
	out <- c(
		header = header,
		seq = seq
	)
	return(out)
}
mySeqs <- lapply(Seqs,convertFasta)

#-----
# condon conversion
my_criteria<-function(length){
    return(paste0(".{",length,"}"));
}
get_codon<-function(s,len){
    output<-regmatches(s, gregexpr(my_criteria(length = len), s))[[1]];
    ### Above function doesnot include any string of undefined length
    return(output);
}

#------
mySeqs[[1]]['seq']
getCodon <- function(seq,len=3){
	subStr <- c()
	# len <- 4
	indx <- seq(1,160-(len-1),len)
	for(i in seq_along(indx)){
		subStr[i] <- substr(seq,indx[i],indx[i]+(len-1))
	}
	return(subStr)
}
```