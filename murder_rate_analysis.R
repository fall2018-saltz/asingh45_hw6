
#To calculate the number of murders per state, we mutiply the murder rate for
#each state with its population. As we have both these available as seperate
#variables we create a new column for number of murders by merely
#mutiplying these and storing it seperately as follows
df['NoOfMurders'] <- df$Murder*df$population
#Load our library for visualizations
library(ggplot2)

#Next we study how the number of variables differ for different states and
#we do this by creating a barplot (geometry=geom_col) with Number on Y axis and 
#different states on the X axis. To avoid overlapping xlabels we use the theme
#command of ggplot and rotate the labels by an angle of 90
#and give our plot a suitable title using ggtitle
ggplot(aes(x=stateName,y=NoOfMurders),data=df) + geom_col() +
  theme(axis.text.x = element_text(angle = 90, hjust = 1)) +
  ggtitle('Total Murders')
ggsave('barplot1.png')

#Next to sort the states by the number of murders we use the order function
#to first sort the data frame and store the sorted order of state names in a 
#state order variable as follows
state_order <- df[order(df$NoOfMurders),1]

#To include this sorted order in our plot, instead of passing the statename 
#column as the X variable we convert it into a factor variable and set the levels
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
