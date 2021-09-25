#### q1

library(dplyr)
data("mtcars")
View(mtcars)
mtcars %>% arrange(desc(hp))

#### q2

data("iris")
View(iris)
iris %>% select(Sepal.Length,Sepal.Width) %>% tail(15)

### q3
data("iris")
View(iris)
iris %>% mutate(new = Sepal.Length*Sepal.Width)

#### q4

data("iris")
View(iris)
iris %>% transmute(new = Sepal.Length*Sepal.Width)

#### q5

data("mtcars")
View(mtcars)
mt <- group_by(mtcars,carb)
summarise(mt,MEAN=mean(disp))

### q6
data("mtcars")
View(mtcars)
mtcars %>% select(mpg,hp) %>% filter(mpg > 20 ,hp < 100)
