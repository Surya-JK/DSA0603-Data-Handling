library(ggplot2)

q3_data <- data.frame(
  Channel = c("Social Media", "Television", "Print Media", "Radio", 
              "Email Marketing", "Influencer Marketing", "SEO", "Events"),
  Budget = c(28, 22, 10, 8, 12, 9, 6, 5)
)

ggplot(q3_data, aes(x = "", y = Budget, fill = Channel)) +
  geom_bar(stat = "identity", width = 1, color = "white") +
  coord_polar("y", start = 0) +
  theme_void() + # Removes standard gridlines and axes
  labs(title = "Marketing Budget Allocation (%)") +
  geom_text(aes(label = paste0(Budget, "%")), position = position_stack(vjust = 0.5))