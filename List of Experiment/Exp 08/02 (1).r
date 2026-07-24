library(ggplot2)

df8_dept <- data.frame(
  Department = c("Sales", "HR", "Marketing")
)

ggplot(df8_dept, aes(x = Department, fill = Department)) +
  geom_bar() +
  labs(title = "Employee Count by Department", x = "Department", y = "Count") +
  theme_minimal()