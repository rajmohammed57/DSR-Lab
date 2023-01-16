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
pairs(df,col=color,bg=color,pch=21)

# covariance
cov(df)
cov(iris$Petal.Length,iris$Petal.Width)
