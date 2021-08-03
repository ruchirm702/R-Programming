# Plot pmf, cdf and quantile function

library(distr)
s<- Binom(10,0.4) #can apply Binom fun when having same size and probability
p(s)(2)
plot(s)
` `
# same as above 
pbinom(2,10,0.4)

n=10
p=0.4
x=0:n
prb=dbinom(x,n,p)
prb
 
cdf = pbinom(x,n,p)
cdf

dist=cbind(x,prb,cdf)
dist

barplot(prb)
barplot(cdf)
