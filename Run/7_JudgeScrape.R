#Current

html <- "https://www.fedcourt.gov.au/about/judges/current-judges-appointment" %>% read_html() %>% 
  html_nodes("div[id = content_div_11044]") %>% 
  html_nodes("a") %>% 
  html_text() %>% 
  as.character()

fed.court.judges <- lapply(html, str_split, " ")

fed.court.judge.vec <- c()

i <- 1
while (i <= length(fed.court.judges)) {
  
  index <- fed.court.judges[[i]][[1]] %>% length()
  
  if(fed.court.judges[[i]][[1]][[index]] == "AO") {
    index = index - 1
  } else {index = index}
  
  fed.court.judge.vec[[i]] <- fed.court.judges[[i]][[1]][[index]]
  
  paste(i, length(fed.court.judges), sep = " / ") %>% print()
  
  i <- i + 1
}

fed.court.judge.vec <- fed.court.judge.vec[c(1:23, 25:45, 47:55)]
fed.court.judge.vec[8] <- "LOGAN"
fed.court.judge.vec[23] <- "KERR"
fed.court.judge.vec[42] <- "DERRINGTON (ALRC)"

rm(html, i, index, fed.court.judges)

#retired

fed.court.judge.vec <- append(fed.court.judge.vec, "BARKER") %>% 
  append("DOWSETT") %>% 
  append("GILMOUR") %>% 
  append("NORTH") %>% 
  append("PAGONE") %>% 
  append("SIOPIS") %>% 
  append("TRACEY") %>% 
  append("COLVIN")

#fix the apostrophes
fed.court.judge.vec <- fed.court.judge.vec %>% 
  append("O’CALLAGHAN") %>% 
  append("O'BRYAN")

#more judges

fed.court.judge.vec <- fed.court.judge.vec %>% 
  append("EDELMAN") %>% 
  append("JESSUP") %>% 
  append("BENNETT") %>% 
  append("EDMONDS") %>% 
  append("MANSFIELD") %>% 
  append("BUCHANAN")