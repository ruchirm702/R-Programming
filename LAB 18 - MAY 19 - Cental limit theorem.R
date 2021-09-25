# LAB - CENTRAL LIMIT THEOREM   

#######################################################################################################################################


# Suppose the grades in a finite mathematics class are Normally distributed with a mean of 75 and a standard deviation of 5.

#   (a) What is the probability that a randomly selected student had a grade of at least 83?

z=(83-75)/5
z

pnorm(1.6,lower.tail = FALSE)

#   (b) What is the probability that the average grade for 5 randomly selected students was at least 83?
#here n is given so clt theroem will be used 
n=5
a<-sqrt(5)
a
v<-5/a
v

z2=(83-75)/v
z2

#above is mathemetical calc can be seen in notes 

pnorm(z2,lower.tail = FALSE)

#######################################################################################################################################


#q2 : The average age of major league baseball players is 28.3 years and has a standard deviation of 2.3 years. 
# If we can assume that ages are Normally distributed, what is the probability that the average age of 10 randomly selected Red Sox players
# is less than 27 years?
 

n=10
m=28.3
s=2.3

b<-sqrt(10)

j<-2.3/b

z3=(27-28.3)/j
z3

# z3 = (27-28.3)/(2.3/sqrt(10)) can also calculated above in single step 

pnorm(z3)

#######################################################################################################################################

# q3 :  Suppose the age of cars on the road is Normally distributed with a mean of 7.2 years. If the standard deviation is known to be 2.1 
# years, what is the probability that 12 randomly selected cars have been on the road for between 6 and 8 years?

m=7.2
s=2.1
n=12

z1 = (6-7.2)/(2.1/sqrt(12))
z1

z2 = (8-7.2)/(2.1/sqrt(12))
z2

pnorm(z2)-pnorm(z1)

#######################################################################################################################################


# q4 :   While checking receipts at Reds, it was determined that the average amount spent on food per table was $21.50 with a 
#        standard deviation of $2.22. If we can assume that the amount of money spent was Normally distributed, what is the probability
#        that the average of 8 checks is between $20 and $23?


z1 = (20-21.50)/(2.22/sqrt(8))
z1

z2 = (23-21.50)/(2.22/sqrt(8))

z2


pnorm(z2)-pnorm(z1)


#######################################################################################################################################

# q5 :   Suppose the age a student graduates from Salem State is Normally distributed. If the mean age is 23.1 years and the 
#        standard deviation is 3.1 years, what is the probability that 6 randomly selected students had a mean age at graduation that 
#        was greater than 27?


z2 = (27-23.1)/(3.1/sqrt(6))
z2
pnorm(z2,lower.tail = FALSE)


#######################################################################################################################################

# q6 :  There are 250 dogs at a dog show who weigh an average of 12 pounds, with a standard deviation of 8 pounds. If 4 dogs are chosen 
#       at random, what is the probability they have an average weight of greater than 8 pounds and less than 25 pounds?


z1 = (8-12)/(8/sqrt(4))
z1

z2= (25-12)/(8/sqrt(4))
z2


pnorm(z2)-pnorm(z1)



#######################################################################################################################################

# q7 :  A fertilizer company manufactures organic fertilizer in 10-pound bags with a standard deviation of 1.25 pounds per bag. 
#       What is the chance that a random sample of 15 bags will have a mean between 9 and 9.5 pounds?


z1 = (9-10)/(1.25/sqrt(15))
z1

z2= (9.5-10)/(1.25/sqrt(15))
z2


pnorm(z2)-pnorm(z1)


#######################################################################################################################################

# q8 :   A certain group of welfare recipients receives SNAP benefits of $110 per week with a standard deviation of $20. If a random sample
#        of 25 people is taken, what is the probability their mean benefit will be greater than $120 per week?

z2 = (120-110)/(20/sqrt(25))
z2
pnorm(z2,lower.tail = FALSE)


#######################################################################################################################################


# q9 :  The record of weights of the male population follows the normal distribution. Its mean and standard deviations are 70 kg and 
#       15 kg respectively. If a researcher considers the records of 50 males, then what would be the mean and standard deviation 
#       of the chosen sample?

# mean of random sample and choosen sample always remain same 

Mchoosen = 70

Schoosen = 15/(sqrt(50)) 
Schoosen











