#####################
## A short function
##   to demonstrate
##   the function
##  readline()
##

help(readline)

########
## So the function readline()
##   will prompt the user
##   for some input, and
##   return it as a character

demo <- function() {
  value <- readline("Please enter a number: ")
  cat("You entered a ", class(value), " variable type!\n\n")
  cat("Don't worry, I can turn it into a number\n\n")
  value <- as.numeric(value)
  cat("The numeric value is", value, "\n")
  cat("... and 4 times your number plus 7 is", 4*value+7, "\n\n")
  cat("This function also returns the numeric value you entered\n")
  cat("NOTE: if you entered a character, the numeric value is NA\n\n")
  value
}

demo()
