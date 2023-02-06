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

quantile(iris$Sepal.Length,0.25)
quantile(iris$Sepal.Length,0.75)

str(iris)
summary(iris)

subset(iris,Sepal.Length<5)
aggregate(.~iris$Species,mean,data=iris)


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

quantile(cars$speed,0.25)
quantile(cars$speed,0.75)

str(cars)
summary(cars)

subset(cars,speed>20)
aggregate(.~speed,data=cars,mean)

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

quantile(mtcars$mpg,0.25)
quantile(mtcars$mpg,0.75)

str(mtcars)
summary(mtcars)

subset(mtcars,mpg<11)

aggregate(.~mtcars$vs,data=mtcars,mean) #aggregate on vs or gears



#### SIR

data(mtcars)
nrow(mtcars)
ncol(mtcars)
mean(mtcars$cyl)
median(mtcars$cyl)
max(mtcars$cyl)
max(mtcars$cyl)-min(mtcars$cyl)
quantile(mtcars$mpg,0.25)
quantile(mtcars$mpg,0.75)
str(mtcars)
summary(mtcars)
subset(mtcars,hp>120)
aggregate(mtcars[,1:11],by = list(mtcars$vs),FUN = mean)

data(cars)
nrow(cars)

ncol(cars)
mean(cars$speed)
median(cars$speed)
max(cars$speed)
max(cars$speed)-min(cars$speed)
quantile(cars$speed,0.25)
quantile(cars$speed,0.75)
str(cars)
summary(cars)
subset(cars,dist<42)
aggregate(cars[,],by = list(cars$speed),FUN = mean)

data(iris)
head(iris)
nrow(iris)
ncol(iris)
mean(iris$Sepal.Length)
median(iris$Sepal.Length)
max(iris$Sepal.Length)
max(iris$Sepal.Length)-min(iris$Sepal.Length)
quantile(iris$Sepal.Length,0.25)
quantile(iris$Sepal.Length,0.75)
str(iris)
summary(iris)
subset(iris,Sepal.Length>7)
aggregate(iris[,1:4],by = list(iris$Species),FUN = median)
