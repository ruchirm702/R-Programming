                                            # HYPOTHESIS

# A hypothesis is an assumption about the population parameter.
# parameter : mean or variance,must be identified before analysis.

# To test we collect sample data, then we calculate sample stats and then use this information to decide whether
# hypothesized value of population parameter is correct or not.

# Hypothesis testing is six-step procedure designed to determine if an assumed statement is TRUE or FALSE

########################################################################################################################
 

# T - test :- used when  the population variance is unknown and the sample size is not large (n < 30)

# One-sample T-test : Whether the sample mean is statistically different from a known population mean. 

# example 1

# Is the Mean of the sample (1,2,3,4,5) equal to the population mean of 3.5 with confidence level of 95 percentage?


sample<-c(1,2,3,4,5)   # given samples 
pop_m<-3.5             # population mean

samp_m<-mean(sample)   # sample mean
samp_sd<-sd(sample)    # sample stand dev 

n<- length(sample)      # to calc sample size 
n

samp_m                  
samp_sd

dof<-n-1   # degree of freedom 
dof

cl<-0.95       # confidence level 
sig<- 1 -cl    # level of significance 
sig

t_stat<-(samp_m-pop_m)/(samp_sd/sqrt(n))   # test stats 
t_stat

tcritical_l <-qt(sig/2,df=dof) # critical value lower : value of regection  #qt same as a qnorm , qt = quantile value 
?qt

tcritical_u = - tcritical_l   # critical value upper 

tcritical_l

tcritical_u

# will compare upper and lower cale with test stats and tstats must lies in between acceptance region , accepting null hypothesis 

t.test(x=sample,mu=3.5)  # to confirm are result  


 p_value<-2*pt(q=t_stat,df=dof) 

p_value

SE=samp_sd/sqrt(n)    # standard error  
SE

CI=samp_m+SE*c(tcritical_l,tcritical_u) # confidence interval 
CI














