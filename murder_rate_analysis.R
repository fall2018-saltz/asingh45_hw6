
#head(df)
murder_df <- data.frame(cbind(df$stateName,df$Murder*df$population))
murder_df['stateName'] <- df$stateName
murder_df['NoOfMurders'] <- df$Murder*df$population
