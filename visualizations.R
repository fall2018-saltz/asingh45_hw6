
head(df)
library(ggplot2)
ggplot(aes(population),data = df) + geom_histogram()
