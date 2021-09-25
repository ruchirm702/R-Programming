# 1.	Create a list containing a vector, a matrix and a list and give names to the elements in the list. 

q<-list(c('English','Hindi','Punjabi','Gujrati'),matrix(c(1:6),2),list('Bottle',33,3:8))
q

names(q)<-c('Languages','mats','inlist') #giving names to elem of list
q

# 2.	Access the second and third element of the list. 

q[c(2,3)]

# 3.	Add one element to the list created.  

q[["Time"]]<-"11:49 PM" 
q

# 4.	Create a nested list with some elements and display the output

l<-list(1:3, list(letters[1:5], c(TRUE, FALSE, TRUE)))
l

# 5.	Create a list with two matrices and two strings.

p<-list((matrix(c(1:6),2)),(matrix(c(1:6),2)),"QUANT","Lucent")
p

# 6.	Add another element to the list after creating it.

p[[4]]<-"The"
p

# 7.	Update the last element that is added to the list. 

p[[4]]<-"Updated"
p

# 8.	Remove one matrix from the above list. 

p[[1]]<-NULL
p

# 9.	Create a two-dimensional 5x3x2 array of sequence of  integers greater than 30. 

array1 =  array(seq(31,61), dim=c(5,3,2)) #61 excluded 
array1

#10.	Print the second row of the second matrix in the array

array1[2,,2]

#11.	Print the element in the 3rd row and 3rd column of the 1st matrix. 

array1[3,3,1]

#11.	Print the element in the 3rd row and 3rd column of the 1st matrix. 

array1[4,1,2]
array1[4,1,2]<-770

#13.	Give the dimension names to all rows, columns and matrices created in array.

dimnames(array1)<-list(c('R1','R2','R3','R4','R5'),c('C1','C2','C3'),c('M1','M2'))
array1

# 14.	Create a factor with some repeating values. 

Seasons<-factor(c('Summer','Winter','Monsoon','Autumn','Monsoon','Summer','Monsoon','Autumn'))
Seasons

# 15.	Find the levels of the factor

levels(Seasons)

# 16.	Create another factor with some other values.

Months<-factor(c('jan','feb','mar','apr','apr','apr','mar','feb'))
Months

# 17.	Combine both the factor values into single factor. 

df1<-data.frame(Seasons,Months)
df1

# 18.	Change the level of the factor. 

Months <- factor(Months, levels =c('feb','mar','jan','apr'))
Months

