add <- function(x,y)
{
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

choice = readline(prompt = "Enter 1)add of Addition 2)subt for subtraction 3)mul for Multiplication 4)div for division");
num1 <- readline(prompt = "Enter First Number:")
num2 <- readline(prompt = "Enter Second Number:")
num1 = as.integer(num1)
num2 = as.integer(num2)
cal <- switch(choice,"add"=add(num1,num2),
              "subt"=subt(num1,num2),
              "div"=div(num1,num2),
              "mul" = mul(num1,num2))




