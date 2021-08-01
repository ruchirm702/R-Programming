# Moments:
# in mathematical statistics involve a calculation used to find a probability distribution's mean, variance, and skewness.
# Moments in statistics still measure something relative to the center of the values.

# Types :- 

# First Moment (mean) s=1

# Second Moment (variance) s=2 

# Third Moment s=3
 
library(moments)
library(e1071)

x<-c(1,3,6,10)
moment(x,order=1)

#similar to mean 
mean(x)

moment(x,order=2)
moment(x,order=3)

# Moments about Mean : subtract each value with mean 

# 1. First Moment about Mean : The first moment about the mean is always equal to zero

# 2. Second Moment about Mean : S=2 ,equal to variance

moment(x,order=2,center = TRUE)
