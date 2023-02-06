# Creating a Data Frame
name <- c("abc","xyz","pqr")
roll <- c(1,2,3)
marks <- c(20,30,40)
student <- data.frame(name,roll,marks)
View(student)
subset(student,marks>=30,select=-roll)

#Text File
student_txt <- read.table("DataSets\\student_txt.txt",header=TRUE)
View(student_txt)

# CSV File
student_csv <- read.csv("DataSets\\student_csv.csv")
View(student_csv)

# Web URL
file_csv <- read.csv("https://people.sc.fsu.edu/~jburkardt/data/csv/airtravel.csv")
View(file_csv)


# xlsx excel file
# install.packages("readxl")
library(readxl)
student_excel <- read_excel("DataSets\\student_xlsx.xlsx")
View(student_excel)

# Writing csv and txt file
write.csv(student,"written_csv.csv")
write.table(student,"written_txt.txt")


###Sir

mydata<-read.table('mydataset.txt')
mydata
mydata<-read.table('mydataset.txt',header = TRUE)
mydata
mydata<-read.table('mydatasetcomma.txt',sep = ',')
mydata
mydata<-read.table('mydatasetcomma.txt',sep = ',',header = TRUE)
mydata
mydata<-read.csv('mydataset.csv')
mydata
mydata<-read.csv('mydataset.csv',nrows = 3)
mydata
mydata<-read.table('http://assets.datacamp.com/course/compfin/sbuxPrices.csv',sep = ',',header = T)
mydata
install.packages("readxl")
library(readxl)
mydata<-read_excel("mydataset.xlsx",sheet = "Sheet1")
mydata

id<-c(100,101,102)
sname<-c("Mango","Apple","Berry")
cost<-c(200,100,300)
fruits<-data.frame(id,sname,cost)
fruits
write.csv(fruits,file = "Fruits")

