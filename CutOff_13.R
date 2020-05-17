no.of.judgments <- rep(0,fed.court.judge.vec %>% length())

j <- 1

while (j <= fed.court.judge.vec %>% length) {
  
  i <- 1
  
  while (i <= id.vec %>% length()) {
    
    if(j %in% id.vec[[i]]) {
      no.of.judgments[[j]] <- no.of.judgments[[j]] + 1
    }
    
    i <- i + 1
  }
  
  paste(j, fed.court.judge.vec %>% length(), fed.court.judge.vec[[j]], sep = " / ") %>% print()
  
  j <- j + 1
}

#Remove Lee and Gleeson

no.of.judgments <- no.of.judgments[c(-31,-39)]

cutoff <- 46

eligible.judges <- which(no.of.judgments >= cutoff, no.of.judgments)
eligible.judges %>% length()