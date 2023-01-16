mytraindata <- read.csv("DataSets\\servicetraindata.csv")
mytestdata <- read.csv("DataSets\\servicetestdata.csv")
head(mytraindata)
head(mytestdata)

str(mytraindata)
str(mytestdata)

summary(mytraindata)
summary(mytestdata)

mytraindata[6] <- as.factor(mytraindata$Service)
summary(mytraindata)

mytestdata[6] <- as.factor(mytestdata$Service)
summary(mytestdata)

library("caret")
install.packages("class")
library("class")
predictknn <- knn(train=mytraindata[,-6],test=mytestdata[,-6],cl=mytraindata$Service,k=3)
predictknn
confusionMatrix(data=predictknn,mytestdata$Service)
