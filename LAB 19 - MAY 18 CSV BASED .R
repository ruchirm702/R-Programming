# Question based on candidates.csv file

a<- read.csv(file.choose()) #laoding file without path , easy way 
a
dim(a)
str(a)
View(a)

#saperating dataset into male and female into two 

male<-subset(a,gender=='Male')
dim(male)

female<-subset(a,gender=='Female')
dim(female)

################################################################################################################################


# 1 What is the probability of a randomly picked female student from the candidates data set with a height less or equal to 159 cm. 

# will calc mean and sd of height 

feh_mean=mean(female$height)
feh_mean
feh_sd=sd(female$height)
feh_sd


z= (159-feh_mean)/feh_sd
z

pnorm(z)
 
# 0.2784151 % female student from the candidates data set with a height less or equal to 159 cm. 


################################################################################################################################

# 2 What is the probability of a randomly picked female student from the candidates data set with a height higher than 162 cm. 


z1= (162-feh_mean)/feh_sd
z1

pnorm(z1,lower.tail = FALSE)

################################################################################################################################

# 3 What is the probability of a randomly picked male student from the candidates data set with a height between 165 and 175 cm?

meh_mean=mean(male$height)
meh_mean
meh_sd=sd(male$height)
meh_sd

z165 = (165-meh_mean)/meh_sd
z175 = (175-meh_mean)/meh_sd 

pnorm(z175) - pnorm(z165)

################################################################################################################################

# 4 What is the probability of a randomly picked female student from the candidates data set with a weight between 65 and 78 kg?.

few_mean=mean(female$weight)
few_mean
few_sd=sd(female$weight)
few_sd


z78 = (78-few_mean)/few_sd 

pnorm(z78) - pnorm(z65)

################################################################################################################################

# 5 What is the probability of a randomly picked male student from the candidates data set with a weight less than 65 kg.

mew_mean=mean(male$weight)
mew_mean
mew_sd=sd(male$weight)
mew_sd

zz65 = (65-mew_mean)/mew_sd

pnorm(zz65)

################################################################################################################################