library(ggplot2)

df9 <- data.frame(
  ProductName = c("Product A", "Product B", "Product C"),
  Quantity = c(250, 175, 300)
)

ggplot(df9, aes(x = ProductName, y = Quantity, fill = ProductName)) +
  geom_bar(stat = "identity") +
  labs(title = "Product Inventory Quantities", x = "Product Name", y = "Quantity Available") +
  theme_minimal()
