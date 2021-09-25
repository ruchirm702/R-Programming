### q1
 
data("iris")
View(iris)
g <-iris
jk<- aggregate(g$Petal.Width,by=list(g$Species),FUN=mean)
jk

#### q3
library(dplyr)
az <- data.frame(Name=c("Akshay","Jitesh","Shiva","Shubham","Tanmay","Shubham","Jitesh","Akhil"),Age = c(28,20,30,12,21,12,20,34))
az
distinct(az)
unique(az)

### q4

data("warpbreaks")
mt <- group_by(warpbreaks,breaks)
summarise(mt,SUM=sum(breaks))  
summarise(mt,MEAN=mean(breaks))
summarise(mt,MED=median(breaks))

### q5

data("warpbreaks")
ct <- group_by(warpbreaks,wool)
summarise(ct)  
pt <- group_by(warpbreaks,tension)
summarise(pt) 

### q6

name <- c("Shiva", "Riya", "Charu", "Tanmay")
age <- c(24, 53, 62, 29)
address <- c("mumbai", "kolkata", "delhi", "bangalore")

##joining columns
i<- cbind(name, age, address)
print("Combining vectors into data frame using cbind ")
print(i)

new <- data.frame(name=c("sounak", "bhabani"),age=c("28", "87"),address=c("bangalore", "kolkata"))

### joining rows
new.i<- rbind(i, new)
print("Combining data frames using rbind ")
print(new.i)

### transpose

first <- matrix(c(1:12), nrow=4, byrow=TRUE)
print("Original Matrix")
first

first <- t(first)
print("Transpose of the Matrix")
first

### q6
data1 <- data.frame(id = 1:6, c1 = c(5, 1, 4, 9, 1, 2), c2 = c("A", "Y", "G", "F", "G", "Y")) 
data1
data2 <- data.frame(id = 4:9, c1 = c(3, 3, 4, 1, 2, 9), c2 = c("a", "x", "a", "x", "a", "x"))
data2
me<-merge(data1,data2,by="id")
me
