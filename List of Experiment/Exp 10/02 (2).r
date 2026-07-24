library(ggplot2)
library(tidyr)

df10 <- data.frame(
  SurveyID = 1:3,
  Q1 = c("A", "B", "C"),
  Q2 = c("B", "A", "A"),
  Q3 = c("C", "D", "B")
)

df10_long <- pivot_longer(df10, cols = starts_with("Q"), names_to = "Question", values_to = "Response")

ggplot(df10_long, aes(x = Question, fill = Response)) +
  geom_bar(position = "stack") +
  labs(title = "Response Distribution Across All Questions", x = "Question", y = "Count") +
  theme_minimal()