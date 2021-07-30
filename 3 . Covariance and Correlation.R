# Covariance and Correlation

# Covariance is a statistical term used to measures the direction of the linear relationship between the data vectors.
# if covariance is positive , linearly related,ranges from -â t0 â(infitiy )
# Syntax:
#   cov(x, y, method)
# 
# where,
# x and y represents the data vectors
# method defines the type of method to be used to compute covariance. Default is "pearson".

x<-c(2.1,2.5,3.6,4.0)
y<-c(8,10,12,14) 
cov(x,y)
cov(y,x)
?cov

View(women) #inbuilt dataset 
cov(women$height,women$weight)

cov(iris$Sepal.Length,iris$Sepal.Width) #negativeley related 

#CORELATION :- Correlation is a relationship term in statistics that uses the covariance method to measure how strong the vectors are related.

# ranges from -1 to 1.
# -1 will denote a perfectly negative (linear) relationship, 
#  0 will denote no (linear) relationship
#  1 will denote a perfectly positive (linear) relationship.  

age<-c(7,6,8,5,6,9)
weight<-c(12,8,12,10,11,13)  

cor(age,weight) #relation is postively related
 
#when having same input in both vector ,will get 1,perfectly positvely corelated  
u<-c(10,20,25,30)
w<-c(10,20,25,30)
cor(u,w)

#negative corelation 

u1<-c(10,20,25,30)
w1<-c(30,25,20,10)
cor(u1,w1) 

data("airquality")
View(airquality)
?airquality

cor(airquality$Wind,airquality$Temp)
cor(airquality$Ozone,airquality$Wind)
cor(women$height,women$weight)
cor(women$height*2.5,women$weight)
 
