#1.	Create a function that will return the sum of 2 integers.

a<-as.integer(readline(prompt = "Enter the first number"))
b<-as.integer(readline(prompt = "Enter the second number"))
add <- function(a,b) {
  print(a+b)
}
add(a,b)

# 2.	Create a function that given a vector and an integer will return how many times the integer appears inside the vector. 

q<- c(1,3,7,9,54,6,78,9,5,3,6,7,9,5,3,6,78,9,0,3)
f<-as.integer(readline(prompt = "Enter the number"))
t <- function(q,f){
  count <- 0
    for (i in 1:length(q)) {
      if (q[i] == f) {
        count <- count + 1
      }
  } 
  count
}
t(q,f)

############## q3
y<-c(6,3,8,4)
u<- function(y)
{
  w<-rep(y,times=2) 
  print(w)
  s<-sort(w)
  print(s) 
  
  
}
u(y)

############# q4
p<-c(3,6,8,5)
x<-as.integer(readline(prompt = "Enter the number"))

f <- function (p, x) {
  exist <- FALSE
  i <- 1
  while (i <= length (p) & !exist) {
    if (p[i] == x) {
      exist <- TRUE
    }
    i <- i + 1
  }
  exist
}
f(p,x)

############## q5

ST='NAME: Maria /COUNTRY:uruguay /EMAIL: mariaUY@gmail.com'
DF=function(ST)
{
  A=unlist(strsplit(ST,'/'))
  M=rbind(unlist(strsplit(A[1],':')),unlist(strsplit(A[2],':')),unlist(strsplit(A[3],':')))
  return(M)
}
M=DF(ST)
M


########### q6
ORDERWORD=function(a)
{
  x=unlist(stri_extract_all(a, regex=c('\\p{L}')))
  POSITION=which(letters%in%x)
  return(POSITION)
}
a='hello'
ORDERWORD(a)
