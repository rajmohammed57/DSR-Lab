# Linear Plot
x <- 1:10
y <- x^2
plot(x,y,type="l",main="Linear Plot")

# Installing packages
install.packages("ggplot2")

# Scatter Plot
data(mtcars)
head(mtcars)
plot(mtcars$wt,mtcars$mpg,main="Scatter Plot",xlab="Weight",ylab="Mileage")

#Scatter Plot on iris
data(iris)
plot(iris$Sepal.Length,iris$Sepal.Width,main="Sepal Length vs Width", xlab="Sepal length",ylab="Sepal width")

# Box Plot
boxplot(mtcars$mpg,main="Box Plot on Mileage",ylab="Mileage")

# Box Plot on iris
data(iris)
boxplot(iris$Sepal.Width,main="Box Plot on Sepal Width",ylab="Sepal Width")

# outliers on sample data set
vec <- c(-140,-10,-2,10,11,50,60,100,102,103,106,109,150,280,301)
boxplot(vec,main="Outliers Example")

# Histogram
vec <- c(10,11,12,13,14,20,21,23,30,31,40,49)
hist(vec,main="Histogram Example",ylab="Frequency",xlab="Bins")

#Histogram on MTCARS
hist(mtcars$mpg,main="Histogram on Mileage",ylab="Frequency",xlab="Mileage")

# Bar Plot
mon <- c("Jan","Feb","Mar","Apr","May","June")
sales <- c(1000,1500,1100,1250,3000,600)
barplot(sales,names.arg=mon,main="Bar Plot(Sales per Month)",xlab="Months",ylab="Sales",border="blue")

#Bar Plot on mtcars

barplot(head(mtcars,15)$disp,names.arg=c(row.names(head(mtcars,15))),las=3)


# Pie Chart
favcolor <- c("Red","Blue","Green","White")
votes <- c(100,80,60,150)
pie(votes,favcolor,main="Pie Chart(Favorite Colors)")

# Pie Chart on iris
data(iris)

aggregate(.~Species,data=iris,mean)
setosa <- nrow(subset(iris,iris$Species == "setosa"))
setosa
versicolor <- nrow(subset(iris,iris$Species == "versicolor"))
versicolor
virginica <- nrow(subset(iris,iris$Species == "virginica"))
virginica

pie(c(setosa,versicolor,virginica),c("setosa","versicolor","virginica"),main="Pie Chart(Distribution of Species)")


# The Below Code also works
library(dplyr)

df = iris
agg_tbl <- df %>% group_by(Species) %>% 
  summarise(total_count=n(),
            .groups = 'drop')
agg_tbl

# Convert tibble to df
df2 <- agg_tbl %>% as.data.frame()
df2
pie(df2$total_count,df2$Species)

