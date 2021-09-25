#### q1
a<-data.frame(No = c(1,1,2,2),time = c(1,2,1,2),x1 = c(5,8,4,3),x2 = c(8,2,6,2))
a

### q2

library(MASS)
library(reshape)
a<-data.frame(No = c(1,1,2,2),time = c(1,2,1,2),x1 = c(5,8,4,3),x2 = c(8,2,6,2))
print("melting")
m <- melt(a, id=c("No", "time"))
m
n <- melt(a, id=c("time"))
n


### q3 
print("Casting")
i <- cast(m, No~variable, mean)
i
j <- cast(m, No~variable, sum)
j
k<- cast(n, time~variable, mean)
k
l<- cast(n, time~variable, sum)
l

##### q4 

s<- read.csv('C:\\DATA SCIENCE 2021\\LECTURES\\FUNDAMENTAL OF LINUX & SERVER CONFIG - MODULE 1\\3. MODULE 4 - PYTHON & R\\5. R\\LECS\\DAY 10 - May 3\\Sample.csv')
str(s)
s
f<- subset(s,Item == 'Paper')
f

### q5

write.csv(f,'output.csv')
getwd()

### q6
library(readxl)
v<- read_excel('C:\\DATA SCIENCE 2021\\LECTURES\\FUNDAMENTAL OF LINUX & SERVER CONFIG - MODULE 1\\3. MODULE 4 - PYTHON & R\\5. R\\LECS\\DAY 10 - May 3\\salary.xlsx',sheet = 1)
v
b<- subset(v,Status == 'Part Time')
