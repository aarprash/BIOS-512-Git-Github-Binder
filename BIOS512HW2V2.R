# Question 1
> y <- 25
> y = 25
> assign("y", 25)
> 
  > print(y)
# Question 2
> cat('He said, "I\'m Garth Marenghi. Author. Dreamweaver. Visionary. Plus actor."')
# Question 3
> cat('He said, "I\'m Garth Marenghi. Author\\Dreamweaver\\Visionary. Plus actor."')
# Question 4
c(1, 2, 3)
1:3
# Question 5
# +, -, sin(), c() are functions/operators. <- is an assignment operator.
# Question 6
# While loop updates a single variable continuously until a condition is false. For loop iterates over a vector essentially modifying the loop variable y inside the loop does not affect the next iteration.
# Question 7
a <- 3
b <- 4
c <- sqrt(a^2 + b^2)
c
# Question 8
?sin
# or
help(sin)
# Question 9
# counter2 uses <<- to modify val in the parent environment of the inner function, allowing state to persist across calls.
# Question 10
View(cars)
library(tidyverse)
cars_summary <- cars %>%
  +     group_by(Make) %>%
  +     summarise(across(where(is.numeric), mean, na.rm = TRUE), .groups = "drop") %>%
  +     arrange(desc(Volume))
View(cars_summary)
# Question 11
fib_counter <- function(){
  a <- 0
  b <- 1
  function(){
    val <- a
    temp <- a + b
    a <<- b
    b <<- temp
    val
  }
}

fib <- fib_counter()
sapply(1:7, function(x) fib())
\

