# Density based clustering

# Syntax :   dbscan(data, eps, MinPts = 5, scale = FALSE, method = c("hybrid", "raw", "dist"))
 

library(dbscan)

data = data.frame(x=c(2,2,8,5,7,6,1,4),y=c(10,5,4,8,5,4,2,9))
data

db=dbscan(data,eps=2,minPts = 2)
db

fviz_cluster(db,data)

db$cluster
db$eps
db$minPts

library(fpc)
db1=fpc::dbscan(data,2,2)
db1

db1$cluster
db1$eps
db1$MinPts
db1$isseed

plot(db1,data )

dbscan::kNNdistplot(data,k=2)
