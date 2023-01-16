mydata <- read.csv("DataSets\\crashdata.csv")
head(mydata,30)

mytestdata <- read.csv("DataSets\\crashtestdata.csv")
head(mytestdata,30)

str(mydata)
summary(mydata)

mydata[6] <- as.factor(mydata$CarType)
head(mydata)
summary(mydata)

fit <- glm(formula=mydata$CarType~.,family="binomial",data=mydata)
fit
summary(fit)
train <- predict(fit,type="response")
plot(train)

pred <- predict(fit,newdata=mytestdata,type="response")
plot(pred)
head(mytestdata)
mytestdata[pred<=0.5,'Predict'] <- "Hatchback"
mytestdata[pred>0.5,'Predict'] <- "SUV"
mytestdata


install.packages("caret")
library("caret")
confusionMatrix(table(mytestdata[,7],mytestdata[,6]),positive="Hatchback")
