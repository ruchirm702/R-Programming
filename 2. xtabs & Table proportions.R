## xtabs() : Use  xtabs() when you want to numerically study the distribution of one categorical variable, or the relationship between two categorical variables
## The xtabs() function creates contingency tables in frequency-weighted format.
# to find the relation between cols 

#creating a dataframe

d1 <- data.frame(Reference = c("KRXH", "KRPT", "FHRA", "CZKK", "CQTN", "PZXW", "SZRZ", "RMZE", "STNX", "TMDW"), 
Status = c("Accepted", "Accepted", "Rejected", "Accepted", "Rejected", "Accepted", "Rejected", "Rejected", "Accepted", "Accepted"),
Gender = c("Female", "Male", "Male", "Female", "Female", "Female", "Male", "Female", "Female", "Female"),
Test = c("Test1", "Test1", "Test2", "Test3", "Test1", "Test4", "Test4", "Test2", "Test3", "Test1"), 
NewOrFollowUp = c("New", "New", "New", "New", "New", "Follow-up", "New", "New", "New", "New"))

d1

## using 1 categorical variable : means using only one single column ,find how xtab will give result

xtabs(~Status,d1) # status is column name and d1 is dataset 
xtabs(~Test,d1)

## using 2 categorical  : add two col

xtabs(~Test+Gender,d1)
xtabs(~Test+Status,d1)
xtabs(~NewOrFollowUp+Status,d1)

## using 3 categorical : add 3 col

xtabs(~Test+Status+Gender,d1)


## Table proportions :-  proportion of each and every value sum of all elem divide by sum

m <- matrix(1:4,2)
m
prop.table(m)

1+2+3+4
1/10
2/10
3/10
4/10

#proportion row wise 
#!st row 1+3=4
#2nd row 2+4=6
1/4
3/4

prop.table(m,1)


#proportion col wise
prop.table(m,2)
