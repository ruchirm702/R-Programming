# Association mining

# apriori() Function is in-built function in R to mine frequent itemsets and association rules using the Apriori algorithm.

# Syntax : apriori(data, parameter = list(supp = 0.1, conf = 0.8))

# Here, 
# data : name of the transaction data.
# parameter : is a named list that specifies the minimum support and confidence for finding the association rules. 
# The default behavior is to mine the rules with minimum support of 0.1 and 0.8 as the minimum confidence.

library(arulesViz)
data("Groceries")
View(Groceries)
class(Groceries)
head(Groceries@itemInfo) # @ is used insted of $ because its a type of transaction data 

summary(Groceries)


inspect(head(Groceries)) # display association and transaction in a readable format 


rule=apriori(Groceries,parameter = list(supp=0.02,conf=0.4))
# if we give less support, many rules builded  and if we give high support less rules builded 
  
rule

inspect(rule) # to check set of rules 

inspect(rule[1:10]) # displaying 10 rules only from all rules 

rule_S = sort(rule,by='count',decreasing = TRUE) # sorting based on cols , count is col 
inspect(rule_S)

itemFrequencyPlot(Groceries,topN=10) # for entire dataset , finding freq plot , what is freq of each and evry item , top 10 

itemFrequencyPlot(Groceries,topN=10,type='absolute') # want y axis value to be absolute 

itemFrequency(Groceries,type='absolute') # to show automatically  , with how many times each n every item bought us ing type = absolute 


rule1=apriori(Groceries,parameter = list(supp=0.001,conf=0.15))
 # now the detail given after exection is unwanted or irreleavant , to removce we use control = list(verbose=F)

rule1=apriori(Groceries,parameter = list(supp=0.001,conf=0.15),control = list(verbose=F))
inspect(head(rule1))
rule1

rule2=apriori(Groceries,parameter = list(supp=0.001,conf=0.15),appearance = list(default='lhs',rhs='whole milk'),control = list(verbose=F))
# appearance = list(default='lhs',rhs='whole milk') using this we can set rhs to particulr col only , LHS can be anything 

rule2

inspect(head(rule2))


rule3=apriori(Groceries,parameter = list(supp=0.001,conf=0.15,minlen=2),appearance = list(default='lhs',rhs='whole milk'),control = list(verbose=F))
# minlen=2 is used to remove empty LHS   ---  {} in the inspect(head(rule2))
 
inspect(head(rule3))


# normal plot function taking rule 1 only 

plot(rule,method = 'grouped')

plot(rule,method = 'graph')

plot(rule,method = 'paracoord')

plot(rule,measure =c('support','confidence'),shading='lift',engine = 'interactive')













