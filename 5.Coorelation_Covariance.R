v <- rnorm(10)
v
c <- rnorm(10)
c

mat <- cbind(v,c)
mat

cor(mat)
cov(mat)
data(iris)
head(iris)

# Removing species column
df <- iris[c(-5)]
head(df)
str(df)

# finding correlation
d1 <- cor(df)
d1
# visualising correlation
install.packages('corrplot')
library("corrplot")
corrplot(d1,method='circle')

color <- c("red","green","blue","black")
pairs(df,col=color,bg=color,pch=20)

# covariance
cov(df)
cov(iris$Petal.Length,iris$Petal.Width)

####Sir


data(iris)
iris
mydata<-iris[,c(1,2,3,4)]
mydata
cor(mydata)
cor(mydata$Sepal.Length,mydata$Sepal.Width)
pairs(mydata,col=c("pink","green","black","red"),pch=20)
cov(mydata)
