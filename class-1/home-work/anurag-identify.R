baseIdentify.func <- function(DNA){ 
  dna.split<- strsplit(DNA, split='')
  dna.split.v <- dna.split[[1]]
  
  if(any(dna.split.v == 'T')){
    print("DNA")
  }else{
    print("RNA")
  }
}