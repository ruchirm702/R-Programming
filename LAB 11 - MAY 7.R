#1 Find the IQR of 'cyl' column in mtcars dataset and describe how the result came.

data("mtcars")

IQR(mtcars$cyl)

# Explaination

q1 = quantile(mtcars$cyl,.75)
q1

q2 = quantile(mtcars$cyl,.25)
q2

#INTER QUARTILE RANGE  : Range of middle half --- (IQR =q1 -q2)

q1-q2


# 2 Find the variance and standard deviation of population and sample created.
pop <- seq(1,1000)

Popvar<- function(x) {
  n<-length(x)
  if(n>1){
    return(var(x)*(n-1)/n)
  }
}

var(pop)  # inbult variance fun 
Popvar(pop) #exact variance 

sqrt(Popvar(pop))
sqrt(var(pop))

# 3 t=c(5,33,1,31,58,99,36,6)
# Using above vector find the variance mathematically and find using inbuilt function in R

t=c(5,33,1,31,58,99,36,6)

var(t) # inbuilt fun 

# Mathemetically 

mean(t)
t-mean(t)
(t-mean(t))**2
a<-sum((t-mean(t))**2) 
a/(length(t)-1)


#4 Find the covariance of any two columns in 'airquality' dataset and check the relationship between them.
?cov()

data("airquality")
View(airquality)

cov(airquality$Temp,airquality$Wind,method = "pearson")
cov(airquality$Temp,airquality$Wind,method = "kendall")


#5 Find the covariance using R for all 3 methods for following vectors:

A=c(12,45,89,32,54,87,123,456,177,66)
B=c(43,72,41,69,44,18,195,62,277,43)

cov(A,B,method = "pearson")
cov(A,B,method = "kendall")
cov(A,B,method = "spearman")







