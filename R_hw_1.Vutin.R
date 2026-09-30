#---------------------------------------------------
#----- R Homework 01 Template
#---------------------------------------------------
  # Clear the workspace
  rm(list = ls()) # Clear environment
  gc()            # Clear memory
  cat("\f")       # Clear console

#---------------
#-- Question 1
#---------------
 
   # Define your fizz(n) function below:
  fizz <- function(n) {
   # if the remainder is 0 after dividing by 3
    if(n %% 3 == 0) {
   # returns "Fizz" if the remainder is 0
      return("Fizz")
   # returns "" if it isn't
    } else {return("")}
  }
  
  # Use commands below to test your function:
  fizz(5L)  # integer input
  fizz(6L)  # integer input
  fizz(5)   # non-integer input
  fizz(6.3) # non-integer input
  fizz(9L)   # additional integer input

#---------------
#-- Question 2
#---------------
  
  # Define your buzz(n) function below:
  buzz <- function(n) {
  # if the remainder is 0 after dividing by 5
    if(n %% 5 == 0) {
  # returns "Buzz" if the remainder is 0
      return("Buzz")
  # returns "" if it isn't 
      } else {return("")}
  }
  
  # Use commands below to test your function:
  buzz(5L)  # integer input
  buzz(6L)  # integer input
  buzz(5)   # non-integer input
  buzz(6.3) # non-integer input
  buzz(10L)  # additional integer input

#---------------
#-- Question 3
#---------------
  
  # Define your fizzbuzz(n) function below:
  fizzbuzz <- function(n) {
  # paste combines values into a character string, sep = "" removes the default space
  # the function runs fizz(n) and buzz(n) independently and combines results 
    return(paste(fizz(n), buzz(n),sep = ""))
  }
  
  # Use commands below to test your function:
  fizzbuzz(4L)  # integer input
  fizzbuzz(6L)  # integer input
  fizzbuzz(15L) # integer input
  fizzbuzz(4)   # non-integer input
  fizzbuzz(6.3) # non-integer input
  fizzbuzz(15)  # non-integer input
  fizzbuzz(30L) # additional integer input

#---------------
#-- Question 4
#---------------
  
  # Define your fbr(n,m) function below:
  fbr <- function(n, m) {
  # creates a vector ranging from n to m  
    numbers <- n:m
  # creates a vector that maintains the position for each number in the range  
    results <- rep(NA, length(numbers))
  # looping through each position in the numbers vector
    for (i in 1:length(numbers)) {
  # gets the fizzbuzz label if applicable in each position    
      label <- fizzbuzz(numbers[i])
  # if there is no label, puts the actual number    
      if (label == "") {
        results[i] <- numbers[i]
  # otherwise applies the label, "Fizz", "Buzz", or "Fizzbuzz"      
        } else {
        results[i] <- label
      }
    }
  # returns the completed vector  
    return(results)
  }
    
  fbr(10L,15L)  # integer inputs
  

  #---------------
  #-- Question 4.1
  #---------------
  
  fbr <- function(n, m) {
  # both n and m have to be integers so there is a check for both  
    if (!is.integer(n) | !is.integer(m)) {
      stop("n and m must both be integers.")
    }
    numbers <- n:m
    results <- rep(NA, length(numbers))
    for (i in 1:length(numbers)) {
      label <- fizzbuzz(numbers[i])
      if (label == "") {
        results[i] <- numbers[i]
      } else {
        results[i] <- label
      }
    }
    return(results)
  }
  
  # fails because 10 isn't specified as an integer, not 10L 
  # fbr(10,15L)  # integer inputs  
  
  
  #---------------
  #-- Question 4.2
  #---------------

  fbr <- function(n, m) {
    if (!is.integer(n) | !is.integer(m)) {
      stop("n and m must both be integers.")
    }
  # checks if the start (n) value is bigger than the last (m) value  
    if (n > m) {
  # stops if n is bigger than m    
      stop("n is bigger than m")
    }
    numbers <- n:m
    results <- rep(NA, length(numbers))
    for (i in 1:length(numbers)) {
      label <- fizzbuzz(numbers[i])
      if (label == "") {
        results[i] <- numbers[i]
      } else {
        results[i] <- label
      }
    }
    return(results)
  }
  
  # fails because the starting value 15L is bigger than the end value 10L
  # fbr(15L,10L)  # integer inputs  
  
