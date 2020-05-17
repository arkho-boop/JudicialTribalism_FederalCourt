#Data error checking (expect errors to arise once run)

#All.judges is empty

i <- 1

NA_vec_All.judges <- c()

while (i <= case.info %>% length()) {
  if (case.info[[i]]$All.judges %>% is.na() | 
      case.info[[i]]$All.judges == ""
      ) {
    NA_vec_All.judges <- append(NA_vec_All.judges, i)
  }
  
  i <- i + 1
} 

#There are no judgments in the field

i <- 1

Judgment_NA <- c()

while (i <= case.info %>% length()) {
  
  if (case.info[[i]]$Judgment %>% length() == 0) {
    Judgment_NA <- Judgment_NA %>% append(i)
  }
  
  i <- i + 1
}

rm(i)