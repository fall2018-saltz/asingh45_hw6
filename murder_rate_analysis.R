
#head(df)
murder_df <- data.frame(cbind(df$stateName,df$Murder*df$population))
colnames(murder_df) <- c('stateName','NoOfMurders')
head(murder_df)

library(ggplot2)
ggplot(aes(x=stateName,y=NoOfMurders),data=murder_df) + geom_col() +
  theme(axis.text.x = element_text(angle = 90, hjust = 1)) +
  ggtitle('Total Murders')
