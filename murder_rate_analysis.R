
#head(df)
murder_df <- data.frame(cbind(df$stateName,df$Murder*df$population))
colnames(murder_df) <- c('stateName','NoOfMurders')
head(murder_df)
