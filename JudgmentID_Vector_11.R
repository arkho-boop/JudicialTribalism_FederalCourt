judgments <- list()

i <- 1

while (i <= case.info %>% length()) {
  judgments <- append(judgments, case.info[[i]]$Judgment)
  
  i <- i + 1
}

rm(i)

id.vec <- vector(mode = "list", length = judgments %>% length())

j <- 1

while (j <= fed.court.judge.vec %>% length()) {
  
  i <- 1
  
  while (i <= judgments %>% length()) {
    
    if (str_detect(judgments[[i]], fed.court.judge.vec[[j]])) {
      id.vec[[i]] <- append(id.vec[[i]], j)
    }
    
    i <- i + 1
  }
  print(fed.court.judge.vec[[j]])
  j <- j + 1
}

rm(i, j, judgments)