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

library(readxl)
student_excel <- read_excel("DataSets\\student_xlsx.xlsx")
View(student_excel)

# Writing csv and txt file
write.csv(student,"written_csv")
write.table(student,"written_tabe")

