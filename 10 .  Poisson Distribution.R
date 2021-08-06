# Poisson Distribution 

# A Poisson process is where DISCRETE events occur with finite interval of time or space in R.
# RANGE FROM ZERO TO INFINITY 
# The mean number of occurrences must be constant taken a lambda value 
# Mean and Variance both equals to  lambda 
# Total no of occureance=n and prob=p given , to calc lambda , will use n*p 

# There are four Poisson functions available in R:
# dpois(x, lambda, log = FALSE) density value , will used for exact value  
# ppois(q, lambda, lower.tail = TRUE, log.p = FALSE) cumulative value , for more than one value 
# qpois(p, lambda, lower.tail = TRUE, log.p = FALSE) quantile 
# rpois(n, lambda) random 

# Where ,
# x - vector of (non-negative integer) quantiles.
# q - vector of quantiles.
# p - vector of probabilities.
# n - number of random values to return.
# lambda - vector of (non-negative) means.
# log, log.p - logical; if TRUE, probabilities p are given as log(p).
# lower.tail - logical; if TRUE (default), probabilities are P[X <= x], otherwise, P[X > x].


################################################################################################################################

#Examples

# q1 Find 5 random values from a total of 9 sample using Poisson distribution.
  rpois(5,9)

# q2 What is the probability of making 2 sales in a week if the average sales rate is 3 per week?
  dpois(2,3)  

# q3 What is the probability of making 3 to 5 sales in a week if the average sales rate is 4 per week?
  
  dpois(3,4)+dpois(4,4)+dpois(5,4)  #1st method
  
  ppois(5,4) #2nd method (calc 0 to 5)
  ppois(2,4)             #(calc 0 to 2)
  ppois(5,4)-ppois(2,4)        


  
# q4 Suppose a cricket player has a p=0.40 batting average. What is the probability of X<=150 hits in n=400 at bats? Also find X=150? X>150?
  
  p=0.40
  n=400
  
  dpois(150,n*p) #x = 150
  ppois(150,n*p,lower.tail = FALSE) # X>150
  ppois(150,n*p) #  X<=150
  
# q5 A random variable x has Posson Distribution with mean 7 . Find the prob that x<5 , x>10(strictly) , x between 4 to 16
  
  ppois(4,7) # x<5
  ppois(10,7,lower.tail = FALSE) #  x>10
  ppois(16,7)
  ppois(3,7)  
  ppois(16,7)-ppois(3,7)   
  