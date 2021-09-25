# Decision tree   

# Syntax :  ctree(formula, data)
# Where,
# formula is a formula describing the predictor and response variables.
# data is the name of the data set used.

library(party)
library(caTools)
?caTools

ip=readingSkills #entire data set
View(ip)

ip1=readingSkills[1:105,] #  top 105 rows only 
View(ip1)

op=ctree(nativeSpeaker~., data = ip )# ctree used to create a decision tree , nativeSpeaker is response vbl 
# for enitre dataa set 
op

plot(op)

op1 = ctree(nativeSpeaker~.,data = ip1)
plot(op1)
op1

plot(op1,type = 'simple')

samp = sample.split(readingSkills,SplitRatio = 0.8)
train = subset(readingSkills,samp==TRUE)
test=subset(readingSkills,samp==FALSE)

dt = ctree(nativeSpeaker~.,data = train)

dt

plot(dt)

pr = predict(dt,test)
pr

m=table(test$nativeSpeaker,pr) # confusion matrix 
m

acc = sum(diag(m))/sum(m)
acc

sum(diag(m))
sum(m)








