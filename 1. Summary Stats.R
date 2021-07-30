#creating a population 

pop<-seq(100,1000) #population
pop
length(pop)

sam<-sample(pop,100)  #sample,100 is taking 100 values from pop 
sam
length(sam)

s<-c('poj','joy','uu','ravi')
sample(s,2,replace=TRUE) #can have repeated value othewise will have unique values only  by default repalce is false 

# CENTRAL TENDENCY : MEAN,MEDIAN & MODE

mean(pop) #avg
mean(sam)

median(pop) #middle value 
median(sam)

mode(pop) #Highest no. of occurance of elements  #will give you type of element/data  # R doesnt support mode ,will create a new fun
mode(sam)

modefun<-function(v){                   #created a func to calculate mode
  uq<-unique(v)                         #finding unique values
  uq[which.max(tabulate(match(v,uq)))]  #match fun #tabulate : will give how many time elem is their #which.max : giving first index 
}

z<-c(2,3,1,5,2,3,1,1,2,2,2)
modefun(z)

#explaing the user defined mode fun 
unique(z)
q<-unique(z)                              #finding unique values
match(z,q)                                # match: matching index will b printed  
tabulate(match(z,q))                      #tabulate : will give how many time elem is their
which.max(tabulate(match(z,q)))           #which.max : giving first index 
q[which.max(tabulate(match(z,q)))]

# MEASURE OF DISPERSION : Scattering of data = Range,Quartile,Interquartile Range, Variance, Standard Deviation 

# 1. RANGE:

max(pop)
min(pop)
range=max(pop)-min(pop) #max value minus min value 
range


# 2. Quartile : Semi Inter Quartile Range = Divide a group into Four sub groups  

#in R , it will quantile

#Q1 ->  25% of dataset is below first quartile
#Q2 ->  50% of dataset is below second quartile [MEDIAN]
#Q3->  75% of dataset is below third quartile
#Quartiles = (Q3 - Q1)/2

quantile(pop)
summary(pop)

quantile(z)
summary(z)

r<-c(24,25,26,27,30,32,40,44,50,52,55,57)
r
length(r)

quantile(r)
summary(r)

# 1st quartile --- all the values that is less than or equal to 50% (36)
#elems in first quartile : 24,25,26,27,30,32--- calc middle value (26+27)/2 = 26.75

# 3st quartile --- all the values that is greater than 50% (36)
#elems in thrd quartile : 40,44,50,52,55,57 --- calc middle value (50+52)/2

#which per of data you want like 25 %
quantile(pop,c(0.23,0.56,0.89)) # any percentage can be given 

# BOX PLOT 
boxplot(r,horizontal = TRUE)
quantile(r)

boxplot(pop,horizontal = TRUE,col = 'yellow',border = 'brown',main='BOX PLOT',xlab='X AXIS',ylab='Y AXIS') 
#main is for title,xlab and ylab are labels 

# plotting two box together 

boxplot(pop,sam,horizontal = TRUE,col = 'yellow',border = 'brown',main='BOX PLOT',xlab='X AXIS',ylab='Y AXIS') 

#naming each plots 

boxplot(pop,sam,horizontal = TRUE,col = 'yellow',border = 'brown',main='BOX PLOT',xlab='X AXIS',ylab='Y AXIS',names=c('pop','sam')) 


# DAY 2 


# 3 INTER QUARTILE RANGE  : Range of middle half --- (IQR =q3 -q1)

q<-c(24,25,26,27,30,32,40,44,50,52,55,57)
q

quantile(q)
IQR(q)

quantile(pop)
IQR(pop)

quantile(sam)
IQR(sam)

# 4. VARIANCE :- measures how far a set of data is spread out.

length(pop)
length(sam)

var(sam)

var(q)

#how variance works

mean(q)                    #taking mean of all elements 
q-mean(q)                  #substracing each elem with mean like 24-38.5 and so
(q-mean(q))**2             # taking square of each elem
length(q)           
a<- sum((q-mean(q))**2)    #adding entire thing 
a/(length(q)-1)            #diving by (no. of elem - 1) 



#no variance function for population , will create a user defined function 

Popvar<- function(x) {
  n<-length(x)
  if(n>1){
    return(var(x)*(n-1)/n)
  }
}

var(pop)
Popvar(pop) #exact variance 



# Standard deviation : is the square root of the variance , no inbuilt fun,will use sqrt 

sqrt(var(sam))
sqrt(Popvar(pop))

