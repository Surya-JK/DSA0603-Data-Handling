library(ggplot2)

q4_data <- data.frame(
  Month = c("Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct"),
  Ad_Cost = c(5, 8, 10, 12, 15, 18, 20, 22, 25, 28),
  Sales = c(42, 55, 63, 70, 82, 91, 98, 110, 120, 132)
)

ggplot(q4_data, aes(x = Ad_Cost, y = Sales)) +
  geom_point(color = "coral", size = 4) +
  theme_minimal() +
  labs(title = "Advertising Expenditure vs Sales Revenue",
       x = "Advertising Cost (₹ Lakhs)",
       y = "Sales Revenue (₹ Lakhs)")