# q1  Create any population with 2000 elements.

pop <- seq(1,2000)
length(pop)


# q2 Take a sample of 500 elements from that population.

sam <- sample(pop,500)
length(sam)

# q3 Find the mean, median and mode for both population and samples

mean(pop)
median(pop)

mean(sam)
median(sam)


modefun<-function(v){                   #created a func to calculate mode
  uq<-unique(v)                         #finding unique values
  uq[which.max(tabulate(match(v,uq)))]  #match fun #tabulate : will give how many time elem is their #which.max : giving first index 
}

modefun(sam)
modefun(pop)


# q4 Find the quantile of both population and samples for 45%, 66% and 87% of data.

quantile(pop,c(0.45,0.66,0.87)) 

# q5 Generate a box plot for population of data

boxplot(pop,horizontal = TRUE,col = 'yellow',border = 'brown',main='BOX PLOT',xlab='X AXIS',ylab='Y AXIS')







