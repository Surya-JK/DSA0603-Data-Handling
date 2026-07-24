library(ggplot2)

df8 <- data.frame(
  EmployeeID = factor(c(1, 2, 3)),
  PerformanceScore = c(85, 92, 78)
)

ggplot(df8, aes(x = EmployeeID, y = PerformanceScore, group = 1)) +
  geom_line(color = "darkgreen") +
  geom_point(size = 3) +
  labs(title = "Employee Performance Trend", x = "Employee ID", y = "Performance Score") +
  theme_minimal()
