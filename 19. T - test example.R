# Example 1 - One Sample

sam <- c(10.5, 9, 6.5, 8, 11, 7, 7.5, 8.5, 9.5, 12) # given samples ,

## null hypo (H0) : thr is no significant difference bewteen population and sample mean 
## alt hypo (H1) : thr is significant difference bewteen population and sample mean 

pop_m = 12       # population mean

t= (mean(sam)-pop_m)/(sd(sam)/sqrt(10))       # t stats mathematically 
t

# two tail t test that y 2 is thr below 

qt(0.05/2,9) # n-1=>10-1=9 , 2 tail , level of significane = 0.05  # critical value

 qt(0.05/2,9,lower.tail = FALSE) # critical value  

t.test(sam,mu=12) # cal t stats using inbult r fun

# H0: No difference
# H1: There is significant difference
# t.test(p,mu=12)
# H0 is Rejected , alt hypo accepted 


t.test(sam,mu=12,alternative = 'less') # left tail  test
t.test(sam,mu=12,alternative = 'greater') # right tail  test 

##################################################################################################################

# Example 2 - Two Sample (Independent) 

x1 <- c(86,87,91,97,98,99,97,94,89,92)
x2 <- c(90,89,82,83,85,79,83,86,81,92)

t.test(x1,x2,conf.level = 0.99)
 
qt(0.01/2,18) # two tail test 

# p-value = 0.0008577 < Alpha=0.01  , null rejected

# H0: No difference
# H1: There is significant difference
# t.test(sample1,sample2,conf.level=0.99)
# H0 is Rejected


###################################################################################################################


# Example 3 - Two Sample (Paired) 
        
s1<-c(180,200,230,240,170,190,200,165)
s2<-c(140,145,150,155,120,130,140,130)

t.test(s1,s2,paired = TRUE)

qt(0.05/2,7)

qt(0.05,7)









