# 1.	Create a dataframe with 5 vectors as input.

d<-data.frame(Patient_ID=c(101,102,103),Hospital= c("AIIMS","APOLLO","FORTIS"),Area=c("Delhi","Mumbai","Banglore"),No_of_Patients=c(21,34,73),Disease=c("Corona","Asthama","Typhoid"))
d

# 2.	Get the structure and summary of the data frame created. 

str(d)
summary(d)

# 3.	 Extract first two rows from a given data frame. 

d[1:2,]

# 4.	Change the row names of the data frame. 

rownames(d)<-c("Row1","Row2","Row3")
d

# 5.	Extract 1st and 3rd rows with 2nd  and 3rd columns from a given data frame. 

d[c(1,3),c(2,3)]

# 6.	 Add new row(s) to an existing data frame. 

d1<-data.frame(Patient_ID=c(104,105,106),Hospital= c("Medanta","Leelavati","Tata"),Area=c("Chennai","Jaipur","Ahemdabad"),No_of_Patients=c(56,89,91),Disease=c("Cancer","Thyroid","Jaundice"))
d1

com_d <- rbind(d,d1)
com_d

# 7.	Drop column(s) by name from a given data frame.

com_d$No_of_Patients<-NULL
com_d

#Factorial
  
n = as.integer(readline(prompt = "Enter the number"))
fact = 1
if(num<0) {
  print("please enter any positive number")
} else if(num == 0) {
  print("Factorial of 0 is 1")
} else {
  for(i in 1:n) {
    fact = fact * i
  }
  print(paste("The factorial of ", n , "is", fact))
}

#check prime number

num = as.integer(readline(prompt="Enter a number: "))
flag = 0

if(num > 1) {
  flag = 1
  for(i in 2:(num-1)) {
    if ((num %% i) == 0) {
      flag = 0
      break
    }
  }
} 
if(num == 2)    flag = 1
if(flag == 1) {
  print(paste(num,"is a prime number"))
} else {
  print(paste(num,"is not a prime number"))
}

#even or odd

num = as.integer(readline(prompt="Enter a number: "))
if((num %% 2) == 0) {
  print(paste(num,"is Even"))
} else {
  print(paste(num,"is Odd"))
}