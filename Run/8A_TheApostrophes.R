#O'CALLAGHAN - 38 **
#O’CALLAGHAN - 62

#O'BRYAN - 63
#O’BRYAN - 49 **

i <- 1

while (i <= length(All.judges.id)) {
  
  if (which(All.judges.id[[i]] == 62) %>% length() == 1) {
    All.judges.id[[i]][[which(All.judges.id[[i]] == 62)]] = 38
  }
  
  if (which(All.judges.id[[i]] == 63) %>% length() == 1) {
    All.judges.id[[i]][[which(All.judges.id[[i]] == 63)]] = 49
  }
  
  if (which(Judgment.id[[i]] == 63) %>% length() == 1) {
    Judgment.id[[i]][[which(Judgment.id[[i]] == 63)]] = 49
  }
  
  if (which(Judgment.id[[i]] == 62) %>% length() == 1) {
    Judgment.id[[i]][[which(Judgment.id[[i]] == 62)]] = 38
  }
  
  i <- i + 1
}

rm(i)