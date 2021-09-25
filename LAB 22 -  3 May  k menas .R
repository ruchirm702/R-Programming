# q4 

data  = data.frame(a=c(2,2,8,5,7,6,1,4),b=c(10,5,4,8,5,4,2,9))
data

k=kmeans(data,3)
k

library(factoextra)
fviz_cluster(k,data)
 
mean(c(8,7,6)) # from q , A3 , A5 , A6  x values 
mean(c(4,5,4)) # from q , A3 , A5 , A6  y values 

# to cal totss 
mean(data$a) # mean of orignal data first col  , global mean
mean(data$b)

# taking col  a, subtract each value of a with gloabl value , (2-4.3)^2 + (2-4.3)^2  + ...+ (4-4.3)^2 = 45.8 aprox 
# taking col  b, subtract each value of a with gloabl value , (10-5.8)^2 + (5-5.8)^2  + ...+ (9-5.8)^2 = 55.2 aprox 
# final = 45.8 + 55.2 = 100.75

k$totss # in R  same as above 

k$withinss # within clusters 

# not completed , refer 7 jun video for this and hierarchial clustter lab q 

