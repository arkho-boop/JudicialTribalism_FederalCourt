i <- 1
while (i <= case.info %>% length()) {
  
  if (case.info[[i]]$Judgment[[1]] == "THE COURT:") {
    case.info[[i]]$Judgment <- case.info[[i]]$All.judges
  }
  
  i <- i + 1
}

rm(i)