# Bayesian Networks 

library(bnlearn)

data("coronary")
View(coronary)
?coronary

class(coronary) # this database is already in data.frame formate, if its in another formate then convert to dataframe only 

# tabu and hc both are same , we can take any one of them 

?tabu

bn= tabu(coronary)
bn

bn1=hc(coronary)

plot(bn)
plot(bn1)


# to find CPT : Conditional Prob Table 

fbn=bn.fit(bn,data = coronary)
fbn

fbn$Pressure

cpquery(fbn,event = (Smoking =='yes'),evidence = c(Proteins=='<3'))

cpquery(fbn,event = (Smoking =='yes'),evidence = c(Proteins=='<3' & Pressure=='>140')) # some random condn can be asked like 

#-------------------------
# another way : based on BAYES THEOREM 

library(mlbench)
library(e1071) 
 
naiveBayes()
data("HouseVotes84")
View(HouseVotes84)

h = na.omit(HouseVotes84)
nb=naiveBayes(Class~V1+V2+V3,data = h)
nb
  


s



















