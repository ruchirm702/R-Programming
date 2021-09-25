# outliee detection for kmeans clustring - kmod() fun used 

library(kmodR)

df = USArrests
View(df)

km = kmeans(df,2)
km
 
k=kmeans(df,2) # kmeans clustering , 2 = no of clusters 

k=kmod(df,2,3) # 3 outliers ddetecting 

# in terms of plot 

km = kmeans(df,2)
library(factoextra)
fviz_cluster(km,df)


# outlier detection for time series - tso()

library(tsoutliers)

o = read.csv(file.choose())
View(o)

ts1= ts(o$boys,frequency = 1 ,start = 1629,end=1710)
plot(ts1)
out1=tso(ts1)
plot(out1)
out1

?tso

out1=()
