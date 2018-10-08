
colnames(df)
library(ggplot2)
png('population_hist.png')
population_hist = ggplot(aes(population),data = df) + geom_histogram()
ggsave('population_hist.png',plot = population_hist)
dev.off()

png('murder_rate_hist.png')
murder_rate_hist = ggplot(aes(Murder),data = df) + geom_histogram()
ggsave('murder_rate_hist.png',plot = murder_rate_hist)
dev.off()
