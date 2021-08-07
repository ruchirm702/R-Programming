# Normal Distribution Examples :- 

#Example 1 :-

#DGP University conducts placement examination to all incoming freshmen. 
# The examination scores of the 1000 examinees last semester were approximately normally distributed
# with mean score of 80 and standard deviation of 5. What is the probability that randomly chosen student 
# got a score

# (A) below 70?

pnorm(70,80,5) #main ans  

pnorm(-2) #if no stand dev given then bydefault , mean = 0 , SD = 1  # calc from stand normarl deviation

pnorm(-2,0,1)

# (B) above 82? 

pnorm(82,80,5,lower.tail = FALSE)

pnorm(.4,lower.tail = FALSE)

# (C) Between 75 and 90?

 pnorm(2)-pnorm(-1)  # 2 , -1 calc frm fromula z=x-m/sd  
 pnorm(90,80,5)-pnorm(75,80,5)

# Example 2 :-
 
 # Suppose we have measured the heights of 100 people. The mean height was 170 cm and the standard deviation
 # was 8 cm. Find percentage of persons having height more than 160.?
   
m = 170
sd = 8

pnorm(160,170,8,lower.tail = FALSE)
pnorm(-1.25,lower.tail = FALSE)   
   
   
# Example 3 :-

# The life of a fully-charged cell phone battery is normally distributed with a mean of 14 hours 
# and with a standard deviation of 1 hour. What is the probability that a battery lasts at least 13 hours?
  
m =14
sd = 1

pnorm(13,14,1,lower.tail = FALSE) #atleast thrfor using lower.tail
pnorm(-1,lower.tail = FALSE)


# Example 4 :_

#The average weight of a raspberry is 4.4 gm with a standard deviation of 1.3 gm. What is the probability 
# that a randomly selected raspberry would weigh at least 3.1 gm but not more than 7.0 gm?

m=4.4
sd=1.3

pnorm(2)-pnorm(-1)
pnorm(7.0,4.4,1.3)-pnorm(3.1,4.4,1.3)
 

# Example 5 :-

# A town has 330,000 adults.Their heights are normally distributed with a mean of 175 cm and variance of 100 cm2
# How many people would you expect to be taller than 205 cm?

m=175
variance = 100 
sd = sqrt(100) # Standard deviation (S) = square root of the variance
sd

pnorm(205,175,10,lower.tail = FALSE)*330000  # How many people is asked thrfor multiplied by 333000

#Example 6 :-

# A machine produces bolts which are N (4,0.09), where measurements are in mm.
# Bolts are measured accurately and any which are smaller than 3.5 mm or bigger than 4.4 mm are rejected.
# Out of a batch of 500 bolts how many would be acceptable?

N (4,0.09)  # if in question given like this mean normal dist with mean and variance
m = 4
variance= 0.09
sd = sqrt(variance)
sd

(pnorm(4.4,4,0.3)-pnorm(3.5,4,0.3))*500 

