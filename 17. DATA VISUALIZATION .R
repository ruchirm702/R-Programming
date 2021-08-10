                                              # DATA VISUALIZATION 

# GGPLOT2

# concept : ggplot2 divides plot into three different fundamental parts: Plot = data + Aesthetics + Geometry.

# data       : data frame
# Aesthetics : used to indicate x and y variables, used control color,size orshape of points,height of bars, etc
# Geometry   : defines the type of graphics (histogram, box plot, line plot, density plot, dot plot, ..)

# two major functions in ggplot2 package:  qplot() &  ggplot()

# qplot() stands for quick plot, which can be used to produce easily simple plots.

# ggplot() function is more flexible and robust than qplot for building a plot piece by piece.

library(ggplot2)

# ggplot works with dataframes and not individual vectors and passed to ggplot() function

# aes() function is used to specify the X and Y axes - aesthetic mapping 

# geom layer specify the type of plot

#inbuilt dataset - TOOTHGROWTH

data("ToothGrowth")
View(ToothGrowth)

### BOX PLOT - based quantile values

ggplot(ToothGrowth,aes(x=dose,y=len))+ geom_boxplot()        # dose , len are col name of dataset

ToothGrowth$dose<-as.factor(ToothGrowth$dose)
ggplot(ToothGrowth,aes(x=dose,y=len))+ geom_boxplot()   #factor will show 3 diff box 

ggplot(ToothGrowth,aes(x=dose,y=len))+ geom_boxplot() + coord_flip() # x and y axis interchanged , x become y ,y become x 


#to put stats summary : mean , median so on  

a<- ggplot(ToothGrowth,aes(x=dose,y=len))+ geom_boxplot()

a+stat_summary(fun=median,geom = 'point',size=3)  # size of dot 

a+stat_summary(fun=mean,geom = 'point',size=3) 

ggplot(ToothGrowth,aes(x=dose,y=len))+ geom_boxplot(outlier.colour = 'blue',outlier.size = 5,outlier.shape =5 ) 


# to limit no. of    box plots 

a + scale_x_discrete(limits=c('2','1'))


# color box plot 

b<- ggplot(ToothGrowth,aes(x=dose,y=len,color= dose))+ geom_boxplot()  

b+scale_color_manual(values = c('Blue','Green','Gold')) #maually adding color


## VIOLIN PLOT - simmilar to box ,will give prob or kernel density value

n<- ggplot(ToothGrowth,aes(x=dose,y=len))+ geom_violin(trim = FALSE) # it will show sharper edges 
n

n<- ggplot(ToothGrowth,aes(x=dose,y=len))+ geom_violin()
n


# boxplot insside violin plot 

n + geom_boxplot()

#decreasing size of box

n + geom_boxplot(width=0.2)




### Histogram using ggplot 

df <- data.frame(value=rnorm(200)) #generating 200 random no. 
head(df)

ggplot(df,aes(x=value)) + geom_histogram()

#changing size of bin 

ggplot(df,aes(x=value)) + geom_histogram(binwidth = .07)

#changing outline color 

ggplot(df,aes(x=value)) + geom_histogram(binwidth = .25,color='gold')


#changing inside  color 


ggplot(df,aes(x=value)) + geom_histogram(binwidth = .25,color='red',fill="blue")

#setting trasperency 

ggplot(df,aes(x=value)) + geom_histogram(binwidth = .25,color='blue',fill="pink",alpha=0.9)


#title 

ggplot(df,aes(x=value)) + geom_histogram(binwidth = .25,color='blue',fill="pink",alpha=0.9) + ggtitle('Histogram')


#subtitle 

ggplot(df,aes(x=value)) + geom_histogram(binwidth = .25,color='blue',fill="pink",alpha=0.9) + ggtitle('Histogram',subtitle = 'Sub-Hist')


# labels x and y  , another ways of giving title 


ggplot(df,aes(x=value)) + geom_histogram(binwidth = .25,color='blue',fill="pink",alpha=0.9) +labs(title = 'Newhist')+ labs(x='val_x',y='freq')


# range from -1 t0 +1 , or -5 to +5 , means specifying the range 

ggplot(df,aes(x=value)) + geom_histogram(binwidth = .25,color='blue',fill="pink",alpha=0.9) +labs(title = 'Newhist')+ labs(x='val_x',y='freq')+xlim(c(-5,5))+ylim(c(0,40))


# scatter plot : geom_point()

View(mtcars)
ggplot(mtcars,aes(x=wt,y=mpg))

ggplot(mtcars,aes(x=wt,y=mpg)) + geom_point() #scatter 

ggplot(mtcars,aes(x=wt,y=mpg)) + geom_point(size=3) #setting size 


ggplot(mtcars,aes(x=wt,y=mpg)) + geom_point(size=3,shape=20) #setting shape 

# instead of point along with row names 


ggplot(mtcars,aes(x=wt,y=mpg)) + geom_point(size=3,shape=20) + geom_text(label=rownames(mtcars)) #each point with row names 



# to generate linear model 


ggplot(mtcars,aes(x=wt,y=mpg))+geom_point() +geom_smooth(method=lm) #straight line drawn 


ggplot(mtcars,aes(x=wt,y=mpg))+geom_point() +geom_smooth(method=lm,se=FALSE) #shadded removed 



ggplot(mtcars,aes(x=wt,y=mpg))+geom_point() +geom_smooth(method=lm,se=FALSE,color='red') #color of line 


ggplot(mtcars,aes(x=wt,y=mpg))+geom_point() +geom_smooth(method=lm,se=FALSE,color='red',linetype='dashed') #line type  




















