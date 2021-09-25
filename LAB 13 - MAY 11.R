#q1 Create a vector of 10 elements and check what type of kurtosis it is.

b <- c(124,534,457,2345,5,645,34,534645,45,675)

kurtosis(b)
hist(b)

#leptokurtic 


#q2 Check the type kurtosis for all the columns in 'airquality' dataset. [Remove if there is any NA values]

data("airquality")

airquality_na_omit <- na.omit(airquality)
airquality_na_omit

kurtosis(airquality_na_omit$Ozone) # platykurtic
kurtosis(airquality_na_omit$Solar.R) #platykurtic
kurtosis(airquality_na_omit$Wind)
kurtosis(airquality_na_omit$Temp)
kurtosis(airquality_na_omit$Month)
kurtosis(airquality_na_omit$Day)


# q3 Using the concept of 'invisible' function, create one R program for simple calculator .Make the multiplication value as invisible 

calc<-function(a,b){
  print(a+b)
  print(a-b)
  invisible(a*b) 
}

d<- calc(2,4)
d


#q4  In 2014, the prevalence of diabetes among adults amounted to about 9%, where prevalence is the proportion of a population that 
# has a disease. We conduct a trial and randomly draw with replacement a sample of 50 persons. The number of persons having diabetes 
# in our sample is denoted by the random variable X. How likely is it, that our sample contains exactly 2 persons with diabetes?

dbinom(2,50,0.09)

#q5 Create a vector with 10 random values from a sample of 50 with the probability of success equal to 4%.

rbinom(10,50,.04)



