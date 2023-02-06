add <- function(x,y)
{
  print("The Addition is: ")
  print(x+y)
}


subt <- function(x,y)
{
  print(x-y)
}


mul <- function(x,y)
{
  print(x*y)
}


div <- function(x,y)
{
  print(x/y)
}
print("1. Add")
print("2.Subtract")
print("3.Divide")
print("4.Multiply")
choice = readline(prompt = "Enter Your Choice: ");
num1 <- as.integer(readline(prompt = "Enter First Number:"))
num2 <- as.integer(readline(prompt = "Enter Second Number:"))

cal <- switch(choice,"1"=add(num1,num2),
              "2"=subt(num1,num2),
              "3"=div(num1,num2),
              "4" = mul(num1,num2))



### Sir
x <- as.integer(readline(prompt = "Enter operand 1: "))
y <- as.integer(readline(prompt = "Enter operand 2: "))
print("1. Add")
print("2.Subtract")
print("3.Multiply")
print("4.Divide")
op<-as.integer(readline(prompt = "Enter choice:"))
if(op==1)
{
  print(x+y)
}
if(op==2)
{
  print(x-y)
}
if(op==3)
{
  print(x*y)
}
if(op==4)
{
  print(x/y)
}


