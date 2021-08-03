#Binomial Distribution :  discrete distribution and has only two outcomes i.e. success or failure.  
#helps us to find the individual probabilities as well as cumulative probabilities over a certain range.
# either true or false / this or that 

# R has four in-built functions to generate binomial distribution.

# dbinom(x, size, prob) -- used at fixed point , to calc any exact value , gives the density, p[x=1]

# pbinom(x, size, prob) -- CDF :- when having or finding ouput of more than one value ,gives the distribution function
# p[x<=3]=p[x=0]+p[x=1]+p[x=2]+p[x=3]

# qbinom(p, size, prob) --  quantile value ,ouput in form prob value or in sum numbers ,gives the quantile function 
#p[x<=a]=0.4 find a?

# rbinom(n, size, prob) --   generates random values.


# Here,
# x is a vector of numbers.
# p is a vector of probabilities.
# n is number of observations.
# size is the number of trials.
# prob is the probability of success of each trial.


## RANDOM VALUES : rbinom



# 1 dbinom()

#Consider the production of bulbs, where 1% OF BULBS IS DEFECTIVE AND WANT TO CHECK THE quality of last batch. 
# For this a random sample of 20 is drawn with replacement from the batch. 
# What is the probability that the bulb is defective?


dbinom(1,20,0.01)

library(distr)
s<- Binom(20,0.5)
s

dbinom(1,20,0.5)
d(s)(1) # 1 means axis at 1 


# 2 pbinom() 
## prob of getting 16 or less heads from a 51 tosses of coin p[x<=16]=p[x=0]+p[x=1]+p[x=2]+p[x=3].....p[x=16]

pbinom(16,51,0.5) #calc from 0 -16

## prob of getting greater than 16 heads from a 51 tosses of coin p[x<=16]=p[x=0]+p[x=1]+p[x=2]+p[x=3].....p[x=16]
pbinom(16,51,0.5,lower.tail = FALSE ) #lower.tail = lower than 16 that is 17 and above 

#or 

1- pbinom(16,51,0.5)

# 3 rbinom

# find 6 random values from a sample of 160 with the prob of 0.6 ?

rbinom(6,160,0.6)

# 4 qbinom

#how many heads will have prob of 0.20 will come out when coin is tossed 50 times 

qbinom(.20,50,0.5)



