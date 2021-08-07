                                                    # Normal Distribution 
                                                    
#The graph produced after plotting the value of the variable on x-axis and count of the value on y-axis is bell-shaped curve graph. 

# The graph signifies that the peak point is the mean of the data set and half of the values of data set lie on the left side 
# of the mean and other half lies on the right part of the mean telling about the distribution of the values. 

# The graph is symmetric distribution.


# dnorm(x, mean, sd)
# pnorm(x, mean, sd)
# qnorm(p, mean, sd)
# rnorm(n, mean, sd)

# Where,
# x is a vector of numbers.
# p is a vector of probabilities.
# n is number of observations(sample size).
# mean is the mean value of the sample data. It's default value is zero.
# sd is the standard deviation. It's default value is 1.
 


x<-seq(-4,4,length=200) #generating 200 values 
x

y<-dnorm(x,mean = 0,sd = 1 )
y

plot(x,y)










