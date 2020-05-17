cases <- list()

code.vector <- list(
  "2020" = c(1:26),
  "2019" = c(1:173, 175:241),
  "2018" = c(1:239),
  "2017" = c(1:37, 39:84, 86:228),
  "2016" = c(1:190)
)

j <- 1

while (j <= code.vector %>% length()) {
  
  i <- 1
  
  while (i <= code.vector[[j]] %>% length()) {
    page <- paste(
      "http://www.austlii.edu.au/cgi-bin/viewdoc/au/cases/cth/FCAFC/",
      names(code.vector)[[j]],
      "/",
      code.vector[[j]][[i]],
      ".html",
      sep = ""
    ) %>% read_html() %>% list()
    
    cases <- cases %>% append(page)
    
    paste(names(code.vector)[[j]], " ... ", i, " / ", code.vector[[j]] %>% length(), sep = "") %>% print()
    
    i <- i + 1
  }
  
  j <- j + 1
}

rm(i, j, page)