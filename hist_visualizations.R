
#Here we start exploring our dataframe by creating visualizations
#To create visualizations we start by loading our ggplot2 library as follows
library(ggplot2)

#First we study univariate relationships by using histograms
#We create a histogram for the population variable by passing aes, data and 
#geometry arguments as per our requirement and save it using the ggsave command 
population_hist = ggplot(aes(population),data = df) + geom_histogram()
ggsave('population_hist.png',plot = population_hist)
#We notice the histogram is right skewed with many states having population 
#lesser than the mean and a few states having very large population

#Next we examine the Murder rate variable using this approach
murder_rate_hist = ggplot(aes(Murder),data = df) + geom_histogram()
ggsave('murder_rate_hist.png',plot = murder_rate_hist)
