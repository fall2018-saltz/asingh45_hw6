
library(ggplot2)
population_hist = ggplot(aes(population),data = df) + geom_histogram()
ggsave('population_hist.png',plot = population_hist)
