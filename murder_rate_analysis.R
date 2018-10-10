
#To calculate the number of murders per state, we mutiply the murder rate for
df['NoOfMurders'] <- df$Murder*df$population
library(ggplot2)

ggplot(aes(x=stateName,y=NoOfMurders),data=df) + geom_col() +
  theme(axis.text.x = element_text(angle = 90, hjust = 1)) +
  ggtitle('Total Murders')
ggsave('barplot1.png')

state_order <- df[order(df$NoOfMurders),1]

ggplot(aes(x=factor(stateName,levels = state_order),y=NoOfMurders),data=df) + geom_col() +
  theme(axis.text.x = element_text(angle = 90, hjust = 1)) +
  ggtitle('Total Murders')
ggsave('barplot2.png')

ggplot(aes(x=factor(stateName,levels = state_order),y=NoOfMurders),data=df) + 
  geom_col(aes(color=percentOver18)) +
  theme(axis.text.x = element_text(angle = 90, hjust = 1)) +
  labs(x="States",y="Number of Murders") +
  ggtitle('Total Murders')
ggsave('barplot3.png')

ggplot(aes(x=population,y=percentOver18),data = df) + 
  geom_point(aes(color=df$Murder),size=df$Murder)
ggsave('scatterplot.png')
