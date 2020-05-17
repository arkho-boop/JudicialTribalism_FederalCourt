inequivalency_error <- c()

i <- 1

while (i <= All.judges.id %>% length()) {
  
  if (FALSE %in% c(All.judges.id[[i]] %in% Judgment.id[[i]])) {
    inequivalency_error <- append(inequivalency_error, i)
  }
  
  i <- i + 1 
}

lack_judges_error <- c()

i <- 1 

while (i <= All.judges.id %>% length()) {
  
  if (All.judges.id[[i]] %>% length < 3 | All.judges.id[[i]] %>% length() == 4) {
    lack_judges_error <- lack_judges_error %>% append(i)
  }
  
  i <- i + 1
}

rm(i)