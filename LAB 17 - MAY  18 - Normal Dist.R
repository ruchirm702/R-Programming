#LAB 1 - 
  
#q1:  X is a normally normally distributed variable with mean μ = 30 and standard deviation σ = 4. Find

m = 30
sd = 4

# a) P(x < 40)
pnorm(40,30,4)

# b) P(x > 21)
pnorm(21,30,4,lower.tail = FALSE)
pnorm(-2.25,lower.tail = FALSE)

# c) P(30 < x < 35)
pnorm(35,30,4)-pnorm(30,30,4)



#q2 :A manufacturer does not know the mean and SD of diameters of ball bearings he is producing. However, a sieving system rejects
# all bearings larger than 2.4cm and those under 1.8 cm in diameter. Out of 1000 ball bearings 8% are rejected as too small and 5.5% 
# as too big. What is average diameter of ball bearing and standard deviation.

#given 
# p(x < 1.8)= 8 % = 0.08     #to small  #quantile value 
# p(x > 2.4)= 5.5 % = 0.05   #to big #quantile value

z1<-qnorm(0.08)
z2<-qnorm(.05,lower.tail = FALSE)
z1
z2

 # to cal mean and sd 

#q3 : Diameter of bolts produced by a machine is given(500). Bolts are measured accurately and any which are smaller than 2.5 mm 
# or bigger than 3.6 mm are rejected. Out of a batch of 500 bolts how many would be acceptable? 
# [500 values of bolts is given in excel file]

r<-read.csv("C:/Users/91759/Documents/R/bolts.csv",header = FALSE)
r
m <- mean(r$V1)
m
s <- sd(r$V1)
s

x1=1.8
z1=1.8-m/sd
z1
x2=2.4
z2=2.4-m/sd
z2
pnorm(z2)-pnorm(z1)
qnorm(0.055,lower.tail=FALSE)
pnorm(qnorm(0.055,lower.tail=FALSE))-pnorm(qnorm(0.08))
pnorm(2.4,m,sd)-pnorm(1.8,m,sd)=0.865

z2=qnorm(0.055,lower.tail=FALSE)
z2		#1.598193
z1=qnorm(0.08)
z1		#-1.405072
m=2.4-z2*sd=1.8-z1*sd
sd=(2.4-1.8)/(z2-z1)
sd		#0.1997826	
m=2.4-z2*sd
m		#2.080709
pnorm(2.4,m,sd)-pnorm(1.8,m,sd)	#0.865


# # p(2.5<x<3.6)
# 
# b<-pnorm(3.6,m,s) - pnorm(2.5,m,s)
# rejection <- b*500




  


