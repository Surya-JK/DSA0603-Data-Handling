library(ggplot2)

q5_data <- data.frame(
  Month = c("January", "February", "March", "April", "May", "June", 
            "July", "August", "September", "October", "November", "December"),
  Energy = c(420, 450, 490, 530, 560, 600, 580, 590, 610, 630, 590, 540)
)

q5_data$Month <- factor(q5_data$Month, levels = q5_data$Month)

ggplot(q5_data, aes(x = Month, y = Energy, group = 1)) +
  geom_line(color = "green", size = 1.2) +
  geom_point(color = "darkgreen", size = 3) +
  theme_minimal() +
  labs(title = "Monthly Electricity Generation (2025)",
       x = "Month",
       y = "Energy Generated (MWh)") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) 