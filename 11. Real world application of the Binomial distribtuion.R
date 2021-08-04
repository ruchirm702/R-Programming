# Real World Applications of the Binomial Distribution
# Example:

#Imagine that you are data scientists tasked with improving the ROI (Return on Investment) of your company's call centre,
#where employees attempt to call potential customers and get them to purchase our product.

# The typical call centre employee completes on average 50 calls per day.

# The probability of a conversion (purchase) for each call is 4%. (On the basis of survey)

#	The average revenue to your company for each conversion is $20.

# The call center you are analyzing has 100 employees.

# 	Each employee is paid $200 per day of work.
 
# [Think of each employee as a binomially distributed random variable ]
 
 
a<- rbinom(n=50,size=100,p=0.04)   #no of conversions
a

b<- round(mean(a))  #average conversion per emp #round is used for round of 
b

revenue= b * 20
revenue

 
# 1.total conversion=sum(no of conversions)
Total_Conv = sum(a)
Total_Conv

# 2.total revenue=total conversion*revenue
Tot_rev = Total_Conv * revenue
Tot_rev

# 3.total expenses=100*200
Tot_exp = 100 * 200 #total 100 employee paid 200$

# 4. total profit=total revenue-total expenses

Tot_prof = Tot_rev-Tot_exp
Tot_prof


#===============================================================================================================
# Finding same upto 100 simulation

i = 1         #  from 1 to 1000
n = 56        #  total no. of calls 
p = 0.06      #  prob of converion

emp = 100     # total No. of employee
wage = 200    #  cost per employee


profits = vector()                            #empty vector 
while (i<1000) {                              # from 1 to 1000 generating
  conversions = rbinom(n,p,size = emp)        #no of conversions
  m1<- round(mean(conversions))               #average conversion per emp #round is used for round of
  revenue= m1 *20
  TotalRevenue=sum(conversions)*revenue       #total conversion=sum(no of conversions)
  TotalExpenses=emp*wage                      #total expenses
  profits[i] = (TotalRevenue-TotalExpenses)   #total profit=total revenue-total expenses will be stored in empty vector
  i = i+1
}
profits
hist(profits)
 






