# CHI - SQUARED TEST
 
qchisq(0.05,6,lower.tail = FALSE) # similar to qt in T test , always positive value 
# alpha = 0.05 , dof = 6 , lower.tail = False remains constant all the time 

#eg:Test the hypothesis whether the students smoking habit is independent of their exercise level at .05 significance level. 

library(MASS) # laoding mass library for survey dataset

View(survey) 

tb=table(survey$Smoke,survey$Exer) # smoke and survey are col of survey dataset 
tb

chisq.test(tb)


# warning message shown because some value are less than  5


pchisq(5.4885,6,lower.tail = FALSE) # generating p value 
qchisq(0.05,6,lower.tail = FALSE) # crticial value without referring table and calc from R 

# calc value is less than critical value chi test will b accepted

# combing two colum to avoid warrnig message ,

cb <- cbind(tb[,'Freq'],tb[,'None']+tb[,'Some'])
cb
a1<-chisq.test(cb)

a1$statistic   # chi sqar stats 

a1$parameter   # degrees of freedom

a1$p.value     #  shows value

a1$method      # what type of method 

a1$data.name   #  in which vbl stored 

a1$observed    # observed frequency

a1$expected    # expected frequency 

a1$residuals   #  gives you how much strength given 

a1$stdres      # standarise of each value  

#############################################################################################################

# exe 2 : 

m= as.table(rbind(c(200,150,50),c(250,300,50)))
m

chisq.test(m)

pchisq(16.204,2,lower.tail = FALSE) 
qchisq(0.05,2,lower.tail = FALSE) 

a1<-chisq.test(cb)

# null rejected 

#############################################################################################################


#  yates continuity correction 

b = as.table(rbind(c(200,150),c(250,300)))
b

# if 2x 2 table is their 

s=chisq.test(b)
s


# whenever freq table is 2x2 table , in that case ,we cant put chisq.test() directly  , if we put directly then
# it shows Chi-squared test with Yates' continuity correction , on this is shown 2x2 table , some correction is added
# yate modified formula for 2x2 as given below 

s=chisq.test(b,correct = FALSE)
s 















