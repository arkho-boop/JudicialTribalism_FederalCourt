#All.judges is empty

#2020

#2019

case.info[[37]]$All.judges <- "BARKER, GRIFFITHS AND WHITE JJ"
case.info[[77]]$All.judges <- "BESANKO, MIDDLETON, DAVIES, STEWARD AND THAWLEY JJ"
case.info[[80]]$All.judges <- "LOGAN, BROMWICH, CHARLESWORTH JJ"
case.info[[127]]$All.judges <- "GRIFFITHS, MORTIMER AND WHITE JJ"

#2018

case.info[[333]]$All.judges <- "SIOPIS, LOGAN AND JAGOT JJ"
case.info[[388]]$All.judges <- "BESANKO, MOSHINSKY AND STEWARD JJ"
case.info[[433]]$All.judges <- "ALLSOP CJ, MIDDLETON AND BEACH JJ"
case.info[[504]]$All.judges <- "BARKER, PERRY AND CHARLESWORTH JJ"

#2017

case.info[[579]]$All.judges <- "RARES, MURPHY AND DAVIES JJ"
case.info[[609]]$All.judges <- "NORTH ACJ, BARKER AND MORTIMER JJ"
case.info[[649]]$All.judges <- "ALLSOP CJ, BESANKO J AND MIDDLETON J"
case.info[[678]]$All.judges <- "DOWSETT, GREENWOOD AND WHITE JJ"
case.info[[702]]$All.judges <- "KENNY, TRACEY AND GRIFFITHS J"

#2016

case.info[[750]]$All.judges <- "BESANKO, JAGOT AND EDELMAN JJ"
case.info[[773]]$All.judges <- "DOWSETT, YATES AND EDELMAN JJ"
case.info[[848]]$All.judges <- "MIDDLETON, ROBERTSON AND GLEESON JJ"
case.info[[882]]$All.judges <- "NORTH, BROMBERG AND PAGONE JJ"


#There are no judgments in the field

i <- 1

while (i <= which(Judgment_NA <= 921) %>% length()) {
  
  case.info[[Judgment_NA[[i]]]]$Judgment <- "THE COURT:"
  
  i <- i + 1
}

rm(i)