# 1)	Create a blank matrix and display the output. s

m<-matrix(nrow=2,ncol=3)
print("BLANK matrix of 2x3")
m

# 2)	Create a 4*5 matrix taking a given vector of numbers as input and define the column and row names. 

RAN<-c('R1','R2','R3','R4')
CAN<-c('c1','C2','C3','C4','C5')
q = matrix(c(1:20) , nrow = 4, ncol = 5, dimnames = list(RAN,CAN))
q

#1)	Access the element of previous matrix at  

q[3,4]            # 4th column and 3rd row
q[2,]             # only the 2nd row 
q[,1]             # only the 1st column. 	

# 4)	Create a 3*2 matrix using rbind and cbind. 

w<-rbind(c(1,2,3),c(4,5))
w
e<-cbind(c(1,2,3),c(4,5))
e

# 5)	Rotate a matrix with 90 degree. 

a<-matrix(1:9,nrow = 3,ncol = 3) 
a
t(a)

# 6)	Modify the matrix of 2nd row , 1st column value to 55. 

a[2,1]<-55
a

# 7)	Perform addition, subtraction, multiplication and division of two matrices. 

H<-matrix(c(5,2,7,8,-3,6),2)
J<-matrix(c(9,3,-4,-2,5,2),2)
H
J
H+J
H-J
H*J
H/J
a

# 

a[3,,drop=FALSE]
a
s<-a[-2,]
s
s<-NULL
s
a
a%*%a
