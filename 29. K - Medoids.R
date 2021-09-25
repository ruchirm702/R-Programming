# K - Medoids 

# syntax :-- pam(x, k, metric = "euclidean", stand = FALSE)

d=data.frame(x=c(5,4,4,6,7),y=c(6,5,6,7,8))
d

library(cluster)
p=pam(d,2)
p
plot(p)

library(factoextra)
fviz_cluster(p)

pp=pam(d,3)
plot(pp)

p$medoids
p$id.med
p$clustering
p$objective
p$isolation
p$clusinfo
p$diss
p$call
p$data
p$silinfo

