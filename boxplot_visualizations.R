
#Here we study our variables using a different plot i.e. the boxplot
library(ggplot2)
population_box = ggplot(aes(y=population),data=df)+geom_boxplot()

murder_rate_box = ggplot(aes(y=Murder),data=df)+geom_boxplot()

#As we see from the plots the boxplot shows a similar trend as the histogram
#showing the right skewness of the population and close to normal spread
#of murder rate
#However boxplots show this information more concisely and also highlights 
#factors like the 25th, 75th and the median and shows outliers more 
#intuitively and hence I find it more expressive.
