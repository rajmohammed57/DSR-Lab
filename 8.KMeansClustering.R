mydata <- read.csv('DataSets\\tripdetails.csv')
head(mydata)

str(mydata)
summary(mydata)

myclusters <- kmeans(mydata[-1],5)

install.packages("factoextra")
library("factoextra")

fviz_cluster(myclusters,data=mydata,geom="point")
