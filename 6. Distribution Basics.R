# Distribution : A mathematical function that provides the probabilities of occurrence of different possible outcomes in an experiment

# Probability Mass Function (PMF) - Discrete 
# when your values of  descrete or finite value 

# Probability Density Function (PDF) - Continous
#when your input of infinte values 

# Cummulative Distribution Function (CDF)
# from previous output combine with next input

# Types of Distribution : Discrete Distribution & Continuous Distribution

 #cummulative distribution inbult fun : cumsum(),cumin(),cummax(),cumprod()
 
d<-c(3,5,7,3,5,2,6,8,2) #first elem print as it is 

cummax(d) #compare ouput and next input and will print max in both 

cummin(d)  #compare ouput and next input and will print min in both 

cumprod(d)  #compare ouput and next input and will print sum of both 

cumsum(d) #compare ouput and next input and will print product  of both 

m<- matrix(1:9,3) #will check column wise 
m

cummax(m)
cummin(m)
cumprod(m)
cumsum(m)

apply(m,1,cumsum) # row wise
apply(m,2,cumsum) # col wise 



