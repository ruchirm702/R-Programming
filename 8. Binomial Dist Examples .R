#ppt- DAY 12

# Binomial Example -2 Solution

# No person with diabetes 
dbinom(0,50,0.09)

#Exactly one person with diabetes
dbinom(1,50,0.09)

#atleast two person with diabetes 

pbinom(1,50,0.09,lower.tail = FALSE)


# Exam 3 : Toss a coin for 12 times. What is the probability of getting exactly 7 heads?

dbinom(7,12,0.5)

#Mathematically can be calc usong choose  fun

n=12
x=7
p=0.5
q=1-p
px<-choose(n,x)*p^x*q^(n-x)
px

# Exam 4 : In each of 4 races, the Democrats have a 60% chance of winning.
#Assuming that the races are independent of each other, what is the probability that: 

 # a. The Democrats will win 0 races, 1 race, 2 races, 3 races, or all 4 races? 
  dbinom(0,4,.6)
dbinom(1,4,.6)
dbinom(2,4,.6)
dbinom(3,4,.6)
dbinom(4,4,.6)

# b. The Democrats will win at least 1 race
pbinom(0,4,.6,lower.tail = FALSE)

# c. The Democrats will win a majority of the races
pbinom(2,4,.6,lower.tail = FALSE)

# Exam 5 : A die is tossed 3 times. What is the probability of

#(a) No fives turning up?
  dbinom(0,3,.167)

#(b) 1 five?
  dbinom(1,3,.167)

#(c) 3 fives?
  dbinom(3,3,.167)
  
# Hospital records show that of patients suffering from a certain disease,
#75% die of it. What is the probability that of 6 randomly selected patients, 4 will recover?

rbinom(4,6,0.25)

# Exam 6 :  In the old days, there was a probability of 0.8 of success in any attempt to make a telephone call. 
#Calculate the probability of having 7 successes in 10 attempts.

dbinom(7,10,0.8)

# Exam 7 : A (blindfolded) marksman finds that on the average he hits the target 4 times out of 5. If he fires 4 shots, what is the probability of
#(a) more than 2 hits?
pbinom(2,4,.8,lower.tail = FALSE)


#(b) at least 3 misses?
  
pbinom(1,4,.8)

# #8 Banks use the binomial distribution to model the probability that a certain number of credit card transactions are fraudulent.
#For example, suppose it is known that 2% of all credit card transactions in a certain region are fraudulent. If there are
# 50 transactions per day in a certain region, we can use a Binomial Distribution Calculator to find the probability that 
# more than a certain number of fraudulent transactions occur in a given day:

# P(X > 1 fraudulent transaction)
pbinom(1,50,.02,lower.tail = FALSE)


# P(X > 2 fraudulent transactions) 
pbinom(2,50,.02,lower.tail = FALSE)

# P(X > 3 fraudulent transactions)
pbinom(3,50,.02,lower.tail = FALSE)

# 9 Email companies use the binomial distribution to model the probability that a certain number of spam emails land in an inbox
# per day.For example, suppose it is known that 4% of all emails are spam. If an account receives 20 emails in a given day, 
# we can use a Binomial Distribution Calculator to find the probability that a certain number of those emails are spam:
   
# P(X = 0 spam emails) 
dbinom(0,20,.04)

# P(X = 1 spam email) = 0.36834
dbinom(1,20,.04)

# P(X = 2 spam emails) = 0.14580
dbinom(2,20,.04)

# Retail stores use the binomial distribution to model the probability that they receive a certain number of shopping returns 
# each week.For example, suppose it is known that 10% of all orders get returned at a certain store each week. If there are
# 50 orders that week, we can use a Binomial Distribution Calculator to find the probability that the store receives more than
# a certain number of returns that week: 

# P(X > 5 returns) 
pbinom(5,50,0.1,lower.tail = FALSE)

# P(X > 10 returns) 
pbinom(10,50,0.1,lower.tail = FALSE)

# P(X > 15 returns) 
pbinom(15,50,0.1,lower.tail = FALSE)
