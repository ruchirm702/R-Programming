# Poisson Distribution 

# In the manufacture of glassware, bubbles can occur in the glass which reduces the status of the glassware to that of a 'second'.
# If, on average, one in every 1000 items produced has a bubble, calculate the probability that exactly six items in a batch of 
# three thousand are seconds.

dpois(6,3) 



# A manufacturer produces light-bulbs that are packed into boxes of 100. If quality control studies indicate that 0.5% of the
# light-bulbs produced are defective, what percentage of the boxes will contain:

#   (a) no defective? 

dpois(0,50)

#   (b) 2 or more defectives?

ppois(2,50,lower.tail = FALSE)



# The mean number of bacteria per millilitre of a liquid is known to be 6. Find the probability that in 1 ml of the liquid, 
# there will be:

# (a) 0

dpois(0,6)

# (b) 1

dpois(1,6)

# (c) 2

dpois(2,6)

# (d) 3

dpois(3,6)

# (e) less than 4

ppois(3,6)

# (f) 6 bacteria.

dpois(6,6)


# A Council is considering whether to base a recovery vehicle on a stretch of road to help clear incidents as quickly as possible.
# The road concerned carries over 5000 vehicles during the peak rush hour period. Records show that, on average, 
# the number of incidents during the morning rush hour is 5. 

# The Council won't base a vehicle on the road if the probability of having more than 5 incidents in any one morning is less 
# than 30%. Based on this information should the Council provide a vehicle?

ppois(5,5,lower.tail = FALSE)



# The number of failures occurring in a machine of a certain type in a year has a Poisson distribution with mean 0.4.
# In a factory there are ten of these machines. What is :

#   (a) the expected total number of failures in the factory in a year?

 E(x)= 10*0.4

#   (b) the probability that there are fewer than two failures in the factory in a year?
  
ppois(1,4)



















  