
# Installing packages
install.packages("ggplot2")
library("ggplot2")

# Box Plot on iris
data(iris)
boxplot(iris$Sepal.Width,main="Box Plot on Sepal Width",ylab="Sepal Width")
boxplot(iris$Sepal.Width~iris$Species,main="Box Plot on Sepal Width",ylab="Sepal Width",xlab="Species")

#Scatter Plot on iris
data(iris)
plot(iris$Sepal.Length,iris$Sepal.Width,main="Sepal Length vs Width", xlab="Sepal length",ylab="Sepal width")

# outliers on sample data set
vec <- c(-140,-10,-2,10,11,50,60,100,102,103,106,109,150,280,301)
boxplot(vec,main="Outliers Example")



#Histogram on MTCARS
hist(mtcars$mpg,main="Histogram on Mileage",ylab="Frequency",xlab="Mileage")


#Bar Chart on mtcars
barplot(mtcars$mpg,names.arg=c(row.names(mtcars)),las=3,ylab="Mileage")


# Pie Chart on iris
data(iris)
mydata<-factor(iris$Species)
mytable<-table(mydata)
View(mytable)
pie(mytable,main="Pie Chart",col=c("Pink","White","Purple"))





### Sir



data(iris)
boxplot(iris$Sepal.Length)
boxplot(iris$Sepal.Width~iris$Species)
plot(iris$Petal.Length)
plot(iris$Petal.Length,pch=20)
salary<-c(20,30,40,50,200)
mean(salary)
median(salary)
boxplot(salary)
data(mtcars)
hist(mtcars$mpg)
barplot(mtcars$disp)

barplot(mtcars$mpg,main="Barplot for mpg", xlab = "tuples",ylab="mpg",col="pink")

mydata<-factor(iris$Species)
mytable<-table(mydata)
View(mytable)
pie(mytable,main="Pie Chart",col=c("Pink","White","Purple"))
