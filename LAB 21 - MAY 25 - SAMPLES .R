# 25 MAY 

#q1 

# in null hypo : assuming true mean difference is 0 , module does'nt leads to an improvement 
# in alt hypo : assuming  module leads to an improvement 

a= c(18,21,16,22,19,24,17,21,23,18,14,16,16,19,18,20,12,22,15,17)
b= c(22,25,17,24,16,29,20,23,19,20,15,15,18,26,18,24,18,25,19,16) 

t.test(a,b,paired = TRUE)

qt(0.05/2,19)

 #null rejected 

# q2  bases on independent test 

t=1.74 # to calc 

qt(0.05/2,28)


# q3  :  based on paired t test

q1 <- c(38,40,35,36,35,32,31,30,28,26,24,21,18,31,22)
q2 <- c(35,32,30,34,30,32,28,27,22,22,18,17,17,25,21)

t.test(q1,q2,paired = TRUE)

# q4 : paired sample 

B<-c(53047,49958,41974,44366,40470,36963)
L<-c(62490,58850,49445,52263,47674,43542)

t.test(B,L,paired = TRUE)

qt(0.05/2,5)

# null rejected , 


# q5


W<- c(84,97,58,90)
M<- c(88,90,52,97,86)

t.test(W,M)

qt(0.05/2,7) # ( 4 + 5 ) -  2 = 7 

# in acceptance region , null accepted 
