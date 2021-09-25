# LAB 24 MAY 

# q1 

sam=c(7.8,29.1,48.2,49.2)
t.test(sam,mu=67) # population mean

qt(0.05/2,3)  # critical value 

# fall under critical region , null hypo rejected , alt hypo accepted 

#q2 

s= c(8.1, 5.7, 11.6,12.9, 3.8, 5.9, 7.8, 9.1, 7.0, 8.2, 9.3, 8.0 )

t.test(s,mu=10)

qt(0.05/2,11)
# null rejected 

# q3 

sam_m = 6.75
sam_sd = 1.5
n = 400
pop_m=6.8

tst=(sam_m-pop_m)/(sam_sd/sqrt(n)) # t stat 
tst

qt(0.05/2,399) # 400 -1 

# null is accepted 


# q4 

t(3.4-3.2)/(2.3/sqrt(900))

qt(0.05/2,899)

# null rejected 

# q5 

t=(64-67)/(3/sqrt(100))
t

qt(0.05/2,99)
 
# check noted for more detail . page -19

64+0.3*c(-1.98,1.98)
 
 # null rejected  