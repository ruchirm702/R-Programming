##Hierarchial Clustering

# 1. dist( ) - dist(x, method = "euclidean")
# Where,
# x - a numeric matrix, data frame or "dist" object.
# method	- the distance measure to be used. This must be one of "euclidean", "maximum", "manhattan", "canberra", "binary" or "minkowski". 

# 2. hclust( ) - hclust(d, method = "complete")
# Where,
# d - a dissimilarity structure as produced by dist.
# method - the agglomeration method to be used. This can be one of "single", "complete", "average".
       
       
#------------------------------------------------------------------------------------------------------------------------#       

View(iris)

df<-scale(iris[,3:4]) #standarization ,scaling can be done on numerical col only , so excluding last col having characters 
# [,3:4] means all rows and 2 cols that is from 3 to 4 , 1:4 means 4 cols  

head(df)

dis<-dist(df,method = 'euclidean') # dist matrix 
head(dis)
as.matrix(dis)[1:5,1:5] # to view as matrix , top 5 rows  and cols 

hc<-hclust(dis,method = 'complete') # hierachial clusttering , mostly complete linkage is used 
hc
plot(hc)

hc$call
hc$method
hc$labels
hc$order
hc$height
hc$merge
hc$dist.method



cc<-cutree(hc,3) # can give our own cluster 
cc

rect.hclust(hc,3) # rectangle cust to plot or to visualise 

table(cc) # to see which cluster have how many points 
table(cc,iris$Species)



library(cluster)
aa=agnes(mtcars,stand = TRUE,metric = 'euclidean',method = 'average')
aa
pltree(aa)

# to split plot into clusters or optimal no. of cluster 
library(factoextra)
fviz_nbclust(mtcars,FUN=hcut,method = 'wss')
