## Homework #3
## AddItUp() Function
## Author: Will Paz

AddItUp <- function() {
  numbers <- c() # Creates a empty vector
  while(TRUE) {
    # The initial question
    value <- readline("Please enter a number: ") 
    value <- as.numeric(value)
    while(is.na(value)) {
      # The follow-up question after a user inputs 
      # something that's not a number
      print("Please enter a number this time.") 
      value <- readline("Please enter a number: ")
      value <- as.numeric(value)
    }
    numbers <- c(numbers,value) # Adds the number to the vector
    # Asking if the user wants to add another number
    answer <- readline("Would you like to enter another number?")
    while(answer %in% list("Yes","yEs","yeS","YES","YEs","yES","yes","y","Y")) {
      # If yes, then user is prompted to enter another number
      value <- readline("Please enter a number: ")
      value <- as.numeric(value)
      
      while(is.na(value)) {
        # The follow-up question after a user inputs 
        # something that's not a number
        print("Please enter a number this time.")
        value <- readline("Please enter a number: ")
        value <- as.numeric(value)
      }
      
      numbers <- c(numbers,value) # Adds the number to the vector
      # Asking if the user wants to add another number
      answer <- readline("Would you like to enter another number?")
    }
    if(answer %in% c("no","NO","No","nO","n","N")) {
      # If no, their will be an output of the total sum, number of numbers,
      # and the numbers themselves
      Total <- sum(numbers)
      NumNumbers <- length(numbers)
      num <- list(Total, NumNumbers,numbers)
      names(num) <- c("Total", "NumNumbers", "Numbers")
      print(num)
      break
    }
    while(!(answer %in% c("no","NO","No","nO","n","N","Yes","yEs","yeS","YES",
                          "YEs","yES","yes","y","Y"))) {
      # If the answer is not yes or two, 
      # the user will have a chance to try again
      print("Please answer yes or no.")
      answer <- readline("Would you like to enter another number?")
    }
  }
}


AddItUp()
