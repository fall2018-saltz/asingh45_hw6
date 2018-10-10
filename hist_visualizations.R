
#Here we start exploring our dataframe by creating visualizations
library(ggplot2)

population_hist = ggplot(aes(population),data = df) + geom_histogram()
ggsave('population_hist.png',plot = population_hist)

murder_rate_hist = ggplot(aes(Murder),data = df) + geom_histogram()
ggsave('murder_rate_hist.png',plot = murder_rate_hist)
