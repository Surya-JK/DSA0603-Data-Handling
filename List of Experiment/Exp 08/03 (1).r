library(knitr)

df8_full <- data.frame(
  `Employee ID` = 1:3,
  Department = c("Sales", "HR", "Marketing"),
  `Years of Service` = c(5, 3, 7),
  `Performance Score` = c(85, 92, 78)
)

kable(df8_full, caption = "Employee Performance Summary Table")