
#Here we study our variables using a different plot i.e. the boxplot
library(ggplot2)
population_box = ggplot(aes(y=population),data=df)+geom_boxplot()
ggsave('population_box.png',plot = population_box)

murder_rate_box = ggplot(aes(y=Murder),data=df)+geom_boxplot()
ggsave('murder_rate_box.png',plot = murder_rate_box)
