adjacency <- matrix(
  0L, 
  nrow = fed.court.judge.vec %>% length(), 
  ncol = fed.court.judge.vec %>% length(),
  dimnames = list(fed.court.judge.vec, fed.court.judge.vec)
)

j <- 1

while (j <= length(fed.court.judge.vec)) {
  
  i <- 1
  
  while (i <= length(id.vec)) {
    
    if(j %in% id.vec[[i]]){
      adjacency[j, id.vec[[i]]] <- adjacency[j, id.vec[[i]]] + 1
    }
    
    i <- i + 1
  }
  
  j <- j + 1
}

i <- 1

while (i <= length(fed.court.judge.vec)) {
  
  adjacency[i,i] <- 0
  
  i <- i + 1
}

tot.adjacency <- matrix(
  0L, 
  nrow = fed.court.judge.vec %>% length(), 
  ncol = fed.court.judge.vec %>% length(),
  dimnames = list(fed.court.judge.vec, fed.court.judge.vec)
)

j <- 1

while (j <= length(fed.court.judge.vec)) {
  
  i <- 1
  
  while (i <= length(All.judges.id)) {
    
    if(j %in% All.judges.id[[i]]){
      tot.adjacency[j, All.judges.id[[i]]] <- tot.adjacency[j, All.judges.id[[i]]] + 1
    }
    
    i <- i + 1
  }
  
  j <- j + 1
}

i <- 1

while (i <= length(fed.court.judge.vec)) {
  
  tot.adjacency[i,i] <- 0
  
  i <- i + 1
}