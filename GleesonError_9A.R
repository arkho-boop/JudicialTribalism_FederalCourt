gleeson <- c()

i <- 1
while (i <= lack_judges_error %>% length()) {
  
  if(39 %in% All.judges.id[[lack_judges_error[[i]]]] && 31 %in% All.judges.id[[lack_judges_error[[i]]]]) {
    gleeson <- gleeson %>% append(lack_judges_error[[i]])
  }
  
  i <- i + 1
}

rm(i)