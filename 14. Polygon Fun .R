# POLYGON FUNCTION :- draw some line taht is shaded 

?polygon

plot(c(1,9),c(1,3),type = 'n') #plotting window with x(1,9) and y(1,3) axis ,type = n mean null for empty plot

polygon(1:9,c(2,1,2,1,NA,2,1,2,1),col = "dark blue") # in this x points from 1 to 9 and y points are given my user
# x = 1 ,y = 2 #first point
# x = 2 , y = 1 #2nd no. 
#x = 3, y = 2 

#LAB 18 MAY , # q4 : - Find the area and draw the plot.

x=seq(70,130,length=200)
y = dnorm(x,100,10)
plot(x,y,type = 'l',col="red")

#to shade the area from 70 to 90 will be using polygon fun , directly we cant use polygon with x and y axis it wont work in that case
# for using a polygon again need to generate a sequence and dnorm and those x and y values can be put in polygon 

x= seq(70,90,length=200) #for finding area ,generating with same x and y axis again 
y=dnorm(x,100,10)
polygon(c(70,x,90),c(0,y,0))
polygon(c(70,x,90),c(0,y,0),col='Dark blue')

area=round(pnorm(90,100,10)- pnorm(70,100,10),3)
area

text(85,.005,area,col = 'white') #to print on plot 



# q5

pnorm(100,100,10) - pnorm(90,100,10)
