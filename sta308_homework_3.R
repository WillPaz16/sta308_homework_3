## Homework #3
## AddItUp() Function
## Author: Will Paz

AddItUp <- function() {
  numbers <- c()
  while(TRUE) {
    value <- readline("Please enter a number: ")
    value <- as.numeric(value)
    while(is.na(value)) {
      print("Please enter a number this time.")
      value <- readline("Please enter a number: ")
      value <- as.numeric(value)
    }
    numbers <- c(numbers,value)
    answer <- readline("Would you like to enter another number?")
    while(answer %in% list("Yes","yEs","yeS","YES","YEs","yES","yes","y","Y")) {
      value <- readline("Please enter a number: ")
      value <- as.numeric(value)
      
      while(is.na(value)) {
        print("Please enter a number this time.")
        value <- readline("Please enter a number: ")
        value <- as.numeric(value)
      }
      
      numbers <- c(numbers,value)
      answer <- readline("Would you like to enter another number?")
    }
    if(answer %in% c("no","NO","No","nO","n","N")) {
      Total <- sum(numbers)
      NumNumbers <- length(numbers)
      num <- list(Total, NumNumbers,numbers)
      names(num) <- c("Total", "NumNumbers", "Numbers")
      print(num)
      break
    }
    while(!(answer %in% c("no","NO","No","nO","n","N","Yes","yEs","yeS","YES",
                          "YEs","yES","yes","y","Y"))) {
      print("Please answer yes or no.")
      answer <- readline("Would you like to enter another number?")
    }
  }
}


AddItUp()
