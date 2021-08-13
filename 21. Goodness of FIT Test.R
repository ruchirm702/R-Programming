 # GOODNESS OF FIT TEST - Using Chi - Squared Test

# example 
# q1

tulip<- c(81,50,27)
res=chisq.test(tulip,p=c(1/3,1/3,1/3)) # 1/3 given in question 

res

res$observed

res$expected

sum(tulip)/3 # ex[pected freq mathematicallly ]

qchisq(0.05,2,lower.tail = FALSE)

# null rejected 
# not equally common

#q2

res1=chisq.test(tulip,p=c(1/2,1/3,1/6))
res1

res1$observed

res1$expected

# mathemetically expected

sum(tulip)*1/2
sum(tulip)*1/3
sum(tulip)*1/6


#############################################################################################################

# exe 2  

a= c(11,12,8,14,7,9,9,8,14,8)
sum(a)

w=chisq.test(a,p=c(1/10,1/10,1/10,1/10,1/10,1/10,1/10,1/10,1/10,1/10))
w

qchisq(0.05,9,lower.tail = FALSE) 
 
#null hypo accepted


#############################################################################################################


# exe 3 

r = c(7,10,11,9,12,10,14,1)

f<-chisq.test(r,p=c(1/8,1/8,1/8,1/8,1/8,1/8,1/8,1/8))
f

# rescale.p

