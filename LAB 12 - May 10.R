#q1 : Create a sample of 18 rows with sample of 5 columns from mtcars dataset.

data("mtcars")
View(mtcars)

df = mtcars
d<-df[sample(nrow(df),18),1:6]
# (nrow(df),18) for selection particular rows 
# 1:6 for cols 

nrow(d)
ncol(d)

#q2 : Find the correlation between sepal.length and sepal.width from iris dataset.Conclude whether it is positive or negatively correlated

?cor()

data("iris")
View(iris)

cor(iris$Sepal.Length,iris$Sepal.Width)

# negatively related 

#q3 : Create the following two vectors and find the correlation and conclude the answer.

a = c(32,12,56,87,34,1,5)
b = c(55,11,54,22,37,1,7)

cor(a,b)
cor(a,b,method = "pearson")
cor(a,b,method = "kendall")
cor(a,b,method = "spearman")


#q4 Find the moment and moment about mean [1st ,2nd,3rd order moment] for 'disp' column in mtcars dataset using R.

library(moments)
library(e1071)

data("mtcars")
moment(mtcars$disp,order=1)
moment(mtcars$disp,order=2)
moment(mtcars$disp,order=3)

?cov


# q5 find the 1st,2nd and 3rd order moment and moment about mean for following vector :

v<- c(12,43,76,56,98,15,96,26,27,84)
moment(v,order = 1,center = TRUE)
moment(v,order = 2,center = TRUE)
moment(v,order = 3,center = TRUE)

#q6 Find the skewness of all the columns in 'mtcars' dataset.

skewness(mtcars$mpg)

hist(mtcars$mpg)
# positive skewness 












