
library(ggplot2)
population_box = ggplot(aes(population),data = df) + geom_boxplot()
ggsave('population_box.png',plot = population_box)

murder_rate_box = ggplot(aes(Murder),data = df) + geom_boxplot()
ggsave('murder_rate_box.png',plot = murder_rate_box)

