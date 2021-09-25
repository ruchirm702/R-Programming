                                         # UNSUPERVISED LEARNING

# CLUSTERING

# kmeans(x, centers, iter.max = 10, nstart = 1)

View(USArrests)
?USArrests

# first thing to do is to remove the missing values 

df <- USArrests
df1 <- na.omit(df) # removing missing value

# always have standardize value for clustring 
# standardize means for each and evry value , subract that malue from mean of that value divided by Stand dev of that value  
# x = q-mean(q)/sd(q) this formula will used  , this is mathemtically , will us fun in r 

df2 <- scale(df1) # this will find  standardize value 
head(df2)

(13.2-mean(df1$Murder))/sd(df1$Murder)                #  mathemtically   

library(cluster)

k = kmeans(df2,2) # assuming 2 clusters 
k

k4 = kmeans(df2,4) # assuming 4 clusters 
k4

k$cluster
k$centers
k$totss # total sum of squares or total variances 
k$iter
k$size
k$withinss

# to plot cluster 

library(factoextra)

fviz_cluster(k,df2)
fviz_cluster(k,df) # without scalling , will not give  accurate ans 

s=kmeans(df,2)
fviz_cluster(s,df)

fviz_cluster(k4,df)


library(NbClust) # if we dont know how many clusster to take , this will optimal no via plot 

fviz_nbclust(df2,kmeans,method = 'wss') # wss - within sum of cluster square 

?fviz_nbclust

fviz_nbclust(df2,kmeans,method = 'silhouette') 




























































