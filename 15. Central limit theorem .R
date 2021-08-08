# CENTRAL LIMIT THEOREM 

# The central limit theorem states that whenever a random sample of size n is taken from any distribution with mean 
# and variance, then the sample mean will be approximately normally distributed with mean and variance. 

# The larger the value of the sample size, the better the approximation to the normal.

#when given question have n(sample size) ,will use this concept 


#example :

# An unknown distribution has a mean of 90 and a standard deviation of 15. Samples of size n = 25 are drawn randomly 
# from the population.Find the probability that the sample mean is between 85 and 92. 

#check notes for mathemetical way 

  pnorm(0.6)-pnorm(-1.6)

#A population of 29-year-old males has a mean salary of $29,321 with a standard deviation of $2,120.
#If a sample of 100 men is taken, what is the probability their mean salaries will be less than $29,000?

z=(29000-29321)/(2120/sqrt(100))
z
  
pnorm(-1.514)
  
  
   
