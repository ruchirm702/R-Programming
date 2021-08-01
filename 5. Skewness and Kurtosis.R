# Skewness and kurtosis : both are numerical methods to analyze the shape of data set .
# These are normality tests to check the irregularity and asymmetry of the distribution. 

# Skewness :- degree of distortion from the symmetrical bell curve or the normal distribution. 
# A symmetrical distribution will have a skewness of 0.

# -0.5 and 0.5, the data are fairly symmetrical.
# -1 and -0.5(negatively skewed) or between 0.5 and 1(positively skewed), the data are moderately skewed.
# less than -1(negatively skewed) or greater than 1(positively skewed), the data are highly skewed.

library(moments)
library(e1071)
x <- c(40, 41, 42, 43, 50) 
skewness(x)

skewness(iris$Sepal.Length)

hist(x) #histogram : frequncy of values 

skewness(iris$Petal.Length)

hist(iris$Sepal.Length)
hist(iris$Petal.Length)

# Kurtosis : measures the sharpness of the peak in the data distribution,involves the fourth moment
# It is actually the measure of outliers present in the distribution

# TYPES : Mesokurtic(middle) ,Leptokurtic(more peakness) & Platykurtic(more flatter)

# 1. Mesokurtic : kurtosis of three (k=3). , normal belled curve 

n<- rnorm(n = 10000, mean = 55, sd = 4.5)
kurtosis(n) 
hist(n)


# 2. Leptokurtic : (Kurtosis > 3). 

n1 <- c(rep(61, each = 2), rep(64, each = 5), 
        rep(65, each = 42), rep(67, each = 12), rep(70, each = 10)) 

kurtosis(n1) 

hist(n1)

# 3. Platykurtic : (Kurtosis < 3).

n2<- rnorm(n = 10000)
kurtosis(n2)
hist(n2)


d = c(88,95,92,97,96,97,94,86,91,95,97,88,85,76,68)
kurtosis(d)  # Leptokurtic

kurtosis(mtcars$mpg) #Platykurtic
kurtosis(faithful$eruptions) #Platykurtic
kurtosis(iris$Sepal.Length)#Platykurtic


#invisible function : to store secure info which dont want to print ,equal to return fun without displaying in output 
pow<-function(a){
  print(a^2)
  invisible(a+a) 
}

h<-pow(3) #storing fun containg invisible value 
h #to see invinsible value 

# set.seed() : uses wherever generating random no. or sample of random no

sample(letters,5) #while exectiong will generate random values,to store a particular random generated value will use set.seed()

set.seed(123)
sample(letters,5) 

set.seed(456) 
sample(1:15,6) #after this 2 commands will generate same set of values again and again   

sample(1:15,6) #if we execute this again and again,will generate random numbers 

