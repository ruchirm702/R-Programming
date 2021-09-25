# Outlier detection

# Example : Find the outliers for the following data set: 3, 10, 14, 22, 19, 29, 70, 49, 36, 32.

a<-c(3, 10, 14, 22, 19, 29, 70, 49, 36, 32)
b<-sort(a)
b
summary(b)
quantile(b) # same as summary 
IQR(b)

#--------------------------------------------------------

View(cars)
plot(cars$speed,cars$dist)

c1 = cars[1:30,] # first 30 rows for all cols 
c2=data.frame(speed=c(19,19,20,20,20),dist=c(190,186,210,220,218)) # adding some random values to existing cols 
c3=rbind(c1,c2)
plot(c3$speed,c3$dist)

#-----------------------------------------------------------

# using dataset ozone 
# univariate,bivariate,multivariate 

o<-read.csv(file.choose())
View(o)

#----------------------------------------------------------

# univariate  appraoch : only one single col will be used 

out<-boxplot.stats(o$pressure_height) # fun to find outliers 
out

out$stats 

out$n     # total no. of observation
out$conf  # the lower and upper extremes of the 'notch'
out$out   # actual outlier 

?boxplot.stats

boxplot(o$pressure_height)
summary(o$pressure_height)

5760+(1.5*IQR(o$pressure_height)/sqrt(203)) # notch  , out$conf notch = 95 % of confidence interval of median 

#----------------------------------------------------------

# bivariate  appraoch : only 2 cols will be used 

boxplot(o$ozone_reading,o$Month,data = o) 
 
boxplot(o$ozone_reading,o$Day_of_month,data = o)

boxplot(o$ozone_reading~o$Day_of_month,data = o) #  another way in terms of fun

boxplot(o$ozone_reading~o$pressure_height,data = o) 

boxplot(o$ozone_reading~cut(o$pressure_height,pretty(o$pressure_height)),data = o) # catoagorical value 
# mean putting in some range only particular box plot will be show from abovve 

x= c(7,6,5)
cut(x,5)
cut(x,9)

s=1:100
pretty(s)

#----------------------------------------------------------

# mutlivariate  appraoch : more than  2 cols will be used 

# In this will take a linear model and given as input to the cooks distance 

# Cook's distance - measure computed with respect to a given LINEAR regression model and 
# therefore is impacted only by the X variables included in the model. 

mod=lm(o$ozone_reading~.,data = o) # ozone_reading = response vbl , dot(.) after tilt sign means excluding ozone_reading  
# all other cols are taken as predicted vbl 

cooksd = cooks.distance(mod)            # calc cooks dist 

plot(cooksd)

abline(h=0.03) # to calc outlier a line drawn , points above line are outliers   














