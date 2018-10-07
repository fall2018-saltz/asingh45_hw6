
#Reading the census data from the url using read.csv
clean_df <- function(){
  census <- read.csv(census)
  census <- census[-c(1,53),c(5:8)]
  colnames(census) <- c("stateName","population","popOver18","percentOver18")
  return(census)
}
typeof(census) 
