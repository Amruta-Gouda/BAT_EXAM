#5.Consider Marks as Label (Y) and Attendance as Feature (X). Implement a function that executes gradient descent algorithm to estimate the coefficient and bias in Y = wX+b. Also print the MSE at the end of this estimation. Restrict the algorithm to try 100 iterations.

batdata<-read.csv(choose.files(),header = TRUE)
head(batdata)

gradientdescent <- function(x, y, learn_rate, conv, n, max_iterations) 
  {
  plot(x, y, col = "green")    #Plotting the data
  a <- runif(1, 0, 1)
  c <- runif(1, 0, 1)
  ycap <- a * x + c
  MSE <- sum((y - ycap) ^ 2) / n   # calculating mse
  converged = F
  iterations = 0
  while(converged == F) {
   
    new_a <- a - learn_rate * ((1 / n) * (sum((ycap - y) * x)))
    new_c <- c - learn_rate * ((1 / n) * (sum(ycap - y)))
    a <- new_a
    c <- new_c
    ycap <- a * x + c
    new_MSE <- sum((y - ycap) ^ 2) / n
    if(MSE - new_MSE <= conv) {
      abline(c, a) 
      converged = T
      print(paste(" MSE:",new_MSE))
      return(paste(" intercept:", c, " slope:", a))
    }
    iterations = iterations + 1
    if(iterations > max_iterations) { 
      abline(c, a) 
      converged = T
      return(paste(" intercept:", c, " slope:", a))
    }
  }
}


set.seed(5)
gradientdescent(batdata$Attendance_in_percentage,batdata$EndTermMarks, 0.01, 0.001, length(batdata$Attendance_in_percentage), 100)



