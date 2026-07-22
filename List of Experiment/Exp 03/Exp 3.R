employee <- data.frame(
  EmployeeID = c(1,2,3,4,5),
  Department = c("Sales","HR","Marketing","Sales","HR"),
  YearsOfService = c(5,3,7,4,2),
  PerformanceScore = c(85,92,78,90,76)
)

plot(employee$EmployeeID,
     employee$PerformanceScore,
     type = "o",
     col = "blue",
     pch = 16,
     xlab = "Employee ID",
     ylab = "Performance Score",
     main = "Employee Performance Trend")

dept <- table(employee$Department)

barplot(dept,
        col = c("red","green","blue"),
        main = "Employees by Department",
        xlab = "Department",
        ylab = "Number of Employees")

plot(employee$YearsOfService,
     employee$PerformanceScore,
     pch = 19,
     col = "purple",
     xlab = "Years of Service",
     ylab = "Performance Score",
     main = "Years of Service vs Performance")

abline(lm(PerformanceScore ~ YearsOfService, data = employee),
       col = "red",
       lwd = 2)

cat("\nInsight:\n")
cat("The scatter plot shows the relationship between years of service and performance score.\n")
cat("The trend line indicates a weak relationship between experience and performance.\n")
