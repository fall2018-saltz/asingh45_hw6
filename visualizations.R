
#head(df)
library(ggplot2)
png('population_hist.png')
ggplot(aes(population),data = df) + geom_histogram()
dev.off()
