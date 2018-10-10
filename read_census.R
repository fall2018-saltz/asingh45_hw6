
#Here we read our census data into a dataframe and further clean in 
clean_df <- function(){
  census <- data.frame(census)
  census <- census[-c(1,53),c(5:8)]
  colnames(census) <- c("stateName","population","popOver18","percentOver18")
  return(census)
}
census <- clean_df()
