
#Reading the census data from the url using read.csv
clean_df <- function(){
  census <- read.csv(url('https://www2.census.gov/programs-surveys/popest/datasets/2010-2017/state/asrh/scprc-est2017-18+pop-res.csv')
           ,stringsAsFactors = FALSE)
  census <- census[-c(1,53),c(5:8)]
  colnames(census) <- c("stateName","population","popOver18","percentOver18")
  return(census)
}
