i <- 1

while (i <= case.info %>% length()) {
  
  #cleaning up list of bench (All.judges)
  
  term <- case.info[[i]]$All.judges[2]
  term <- gsub("\nJUDGE:\n\n\n", "", term)
  term <- gsub("\nJUDGES:\n\n\n", "", term)
  term <- str_split(term, "\n")
  
  case.info[[i]]$All.judges <- term[[1]][[1]]
  
  #cleaning up case names (Name)
  
  name <- gsub("\n", "", case.info[[i]]$Name)
  case.info[[i]]$Name <- name[[1]]
  
  i <- i + 1
}

rm(name, term, i)