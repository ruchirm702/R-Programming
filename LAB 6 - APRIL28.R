######## q1

q<-data.frame(Col1=1:7,Col2=8:14,Col3=15:21,Col4=22:28)
q
rownames(q)<-c("Row1","Row2","Row3","Row4","Row5","Row6","Row7")
q

##### q2

q<-data.frame(Col1=1:7,Col2=8:14,Col3=15:21,Col4=22:28)
q
w<- apply(q,1,sum)
w

##### q3
q<-data.frame(Col1=1:7,Col2=8:14,Col3=15:21,Col4=22:28)
q
e<-apply(q,2,cumsum)
e

######## q4

r<- lapply(q,max)
r

###### q5

t<-data.frame(23,22,54,67,87,98,656,7,546,67,55,34)
d<-function(g) {
  
  if (g>40){
    print(g)
  }
}
lapply(t,d)

######## q6
y <- data.frame(23,34,45,66,23)
j<- function(y){}
sapply(y,print)

###### q7
data("trees")
library(magrittr)
summary(trees)