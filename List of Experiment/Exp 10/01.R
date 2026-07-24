library(ggplot2)

df10_q1 <- data.frame(
  Answer = c("A", "B", "C"),
  Count = c(1, 1, 1)
)

ggplot(df10_q1, aes(x = Answer, y = Count, fill = Answer)) +
  geom_bar(stat = "identity") +
  labs(title = "Distribution of Answers for Question 1", x = "Answer Option", y = "Response Count") +
  theme_minimal()
