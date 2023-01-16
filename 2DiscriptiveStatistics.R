# Iris data set
data(iris)
head(iris)
head(iris,15)
head(iris[1:3])
head(iris[c(1,3)])
tail(iris)

mean(iris$Sepal.Length)
median(iris$Sepal.Length)
mode(iris$Sepal.Length)

min(iris$Sepal.Length)
max(iris$Sepal.Length)

summary(iris)

subset(iris,Sepal.Length<5)
aggregate(.~Species,data=iris,mean)


# cars data set

data(cars)
head(cars)
head(cars,15)
head(cars[c(2)])
tail(cars)

mean(cars$speed)
median(cars$speed)
mode(cars$speed)

min(cars$speed)
max(cars$speed)

summary(cars)

subset(cars,speed>20)
aggregate(.~dist,data=cars,mean)

# mtcars data set
data(mtcars)
head(mtcars)
head(mtcars,15)
head(mtcars[1:3])
head(mtcars[c(1,3)])
tail(mtcars)

mean(mtcars$mpg)
median(mtcars$mpg)
mode(mtcars$mpg)

min(mtcars$mpg)
max(mtcars$mpg)

summary(mtcars)

subset(mtcars,hp>=200)
aggregate(.~gear,data=mtcars,mean)

