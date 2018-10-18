
#Here we start exploring our dataframe by creating visualizations
#To create visualizations we start by loading our ggplot2 library as follows
library(ggplot2)

#First we study univariate relationships by using histograms
#We create a histogram for the population variable by passing aes, data and 
#geometry arguments as per our requirement and save it using the ggsave command 
population_hist = ggplot(aes(population),data = df) + geom_histogram()
#We notice the histogram is right skewed with many states having population 
#lesser than the mean and a few states having very large population

#Next we examine the Murder rate variable using this approach
murder_rate_hist = ggplot(aes(Murder),data = df) + geom_histogram()
#Here we notice that the distribution is more spread out in comparison
#to the population histogram

#To get a cleaner view of the distribution we adjust the binwidth for  
#histograms, which is the width for a single bin(or portion) in our plot
#We demonstrate this by looking at the histograms for other variables

h1 = ggplot(aes(popOver18),data = df) +
  geom_histogram(binwidth = 1000000)

h2 = ggplot(aes(percentOver18),data = df)+
  geom_histogram(binwidth = 0.5)

h3 = ggplot(aes(Assault),data =df) +
  geom_histogram(binwidth = 10)

h4 = ggplot(aes(UrbanPop),data = df) +
  geom_histogram(binwidth = 5)

h5 = ggplot(aes(Rape),data = df) +
  geom_histogram(binwidth = 5)
