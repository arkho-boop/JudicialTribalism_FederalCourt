case.info <- list()

i <- 1

while (i <= cases %>% length()) {
  
  #define case
  
  case <- cases[[i]]
  
  #define data for (1) case name, (2) court name, and (3) list of judgments
  
  data <- html_nodes(case, "p") %>% 
    html_nodes("b") %>% 
    html_text() %>% 
    as.character()
  
  #extract (1) case name
  
  case.name <- data[2]
  
  #extract (2) court name
  
  court.name <- data[1]
  
  #extract (3) list of judgments
  
  court.no <- data %>% 
    str_detect("COURT:")
  
  judge.name.no <- data %>% 
    str_detect("J:")
  
  judges <- c(
    which(court.no),
    which(judge.name.no)
  )
  
  list.judgments <- c(
    data[judges]
  )
  
  #extract (4) list of judges
  
  list.judges <- html_nodes(case, "table") %>% 
    html_text() %>% 
    as.character()
  
  list.judges.no <- which(list.judges %>% str_detect("JJ"))
  
  all.judges <- list.judges[list.judges.no]
  
  #compile data
  
  case.info[[i]] <- list(
    "Name" = case.name,
    "Court" = court.name,
    "All.judges" = all.judges,
    "Judgment" = list.judgments
  )
  
  #progress tracker
  
  paste(i, cases %>% length(), sep = " / ") %>% print()
  
  i <- i + 1
}

rm(case, all.judges, case.name, court.name, court.no, data, i, judge.name.no, judges, list.judges, list.judges.no, list.judgments)