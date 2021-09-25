# TIME SERIES ANALYSIS : ts()

?ts()

ts(1:15,frequency = 1,start = c(1990,1),end=c(1998,3)) #1:15 random data ,

ts(1:15,frequency = 4,start = c(1985,3)) # freq = 4 mead taking into 4 quater , c(1985,3) here 3 represents from 3rd quater 

ts(1:15,frequency = 6,start = c(1985,6))

ts(1:15,frequency = 8,start = c(1985,6))

ts(1:15,frequency = 12,start = c(1985,6)) # month wise 


a = ts(1:15,frequency = 3,start = 1959,end=1960) 
plot(a)

a1=rnorm(200) # it will generate some negative values also  , adding 1 to remove negative values and round fun upto 2 

a1=1+round(rnorm(200),2)
a1

p = ts(a1,frequency = 4,start = c(1985,7)) # quaterly 
plot(p)

p1 = ts(a1,frequency =365,start = c(1985,7)) # daily
plot(p1)

# if data consist of matrices of values 

d1=matrix(rnorm(400),100,4) #multivariat column 
head(d1)

q=ts(d1,frequency = 4,start = c(1985,2))
plot(q)
q

#-------------------------------------------------------

# how to extract Trend  Component , Seasonal Component and Residual Component  from original time series  using decompose funtion 

king=read.csv(file.choose()) # no file so just for understanding 

# always first convert data in time series 

k = ts(king,frequency = 12 , start = c(1987,1))
plot(k)

#  to check how seasonality will be their

birth =read.csv(file.choose())
b = ts(birth,frequency = 12 , start = c(1987,1))
plot(b)

# decompose splits into 3 components

dec_b = decompose(b) # by default it is a additive model

# to change it into multipicative model then

dec_b1 = decompose(b , type = 'multiplicative ')

plot(dec_b)
plot(dec_b1)

# to remove seasonal component 

dec_b$seasonal   # to find high of low seasonaliy values 

adj = b-dec_b$seasonal  # from origianl time series subtracting seasonal component 

plot(adj) # in plot no seasonality shows


# Decomposing of non seasonal data , in non seasonal data , only trend component will be their 

library(TTR) # using this lib to decompose non seasonal data 

# simple moving avg method : used to estimate trend component alone or to decopose trend component only 

ksma=SMA(k,n=3) # SMA : Simple moving avg fun , n = to estimate what will be trend
plot(ksma)
plot(k)


ksma=SMA(k,n=8) # fluctuation reduced , n increases and smoothing also increase 

#--------------------------------------------------------------------------------------------------------------------


# ARIMA : Auto-Regressive Integrated Moving Averages : for time series forecasting  

library(tseries)

?adf.test

adf.test(k)

?kpss.test()

kpss.test(k)


df1=diff(k,1) # makiing stationary 
plot(df1)

acf(df1,lag.max=20)
pacf(df1,lag.max=20)


#------------------------------------------------------------------------------------------------------------

t = read.csv(file.choose())
tt=ts(t[,2],start = c(2002,1),frequency=12)
plot(tt)
View(t) 

dec=decompose(tt)
plot(dec)


l = log10(diff(tt))

library(ggfortify)
library(tseries)
library(forecast)

aa= auto.arima(l)

































 




