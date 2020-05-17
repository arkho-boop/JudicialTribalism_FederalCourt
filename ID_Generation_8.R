All.judges.id <- vector(mode = "list", length = case.info %>% length())
Judgment.id <- vector(mode = "list", length = case.info %>% length())

j <- 1

while (j <= fed.court.judge.vec %>% length()) {
  
  judge <- fed.court.judge.vec[[j]]
  
  i <- 1
  
  while (i <= case.info %>% length()) {
    
    if (str_detect(case.info[[i]]$All.judges, judge)) {
      All.judges.id[[i]] <- append(All.judges.id[[i]], j)
    }
    
    if (str_detect(case.info[[i]]$Judgment %>% c() %>% paste(collapse = " "), judge)) {
      Judgment.id[[i]] <- append(Judgment.id[[i]], j)
    }
    
    i <- i + 1
  }
  
  paste(j, length(fed.court.judge.vec), sep = " / ") %>% print()
  
  j <- j + 1
}

rm(i,j,judge)