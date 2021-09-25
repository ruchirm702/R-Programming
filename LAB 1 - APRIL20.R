# 1.	Find the current working directory using R 
search()

# 2.	Get the name and age from the user using R.

g<-readline(prompt = "Enter the Name")
g
a<-as.integer(readline(prompt = "Enter the age"))
a

#3.	Print "How are you" in left aligned with 50 as total width. 

p<-format("How are you",width=50,justify='l')
p

# 4.	Print 45 to 75 with difference 1.7 using R 

seq(45,75,by=1.7)

# 5.	Create a vector employee with name as sam, age as 43, designation as HR, salary as 5500, colour as red.

employee<-c("Name"="Sam","Age"=43,"Designation"="HR","Salary"=5500,"Colour"="Red" ) 
employee

# 6.	Find the names of employee vector 

employee[1]

# 7.	How many elements are there in employee vector? 

length(employee)

# 8.	Change the value of salary to 3300 

employee["Salary"]<-3300
employee

# 9.	Extract the name and designation of the employee vector. 
employee[c(1,3)]
