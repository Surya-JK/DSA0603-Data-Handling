library(ggplot2)

df9_cat <- data.frame(
  Category = c("Category 1", "Category 1", "Category 2"),
  ProductName = c("Product A", "Product B", "Product C"),
  Quantity = c(250, 175, 300)
)

ggplot(df9_cat, aes(x = Category, y = Quantity, fill = ProductName)) +
  geom_bar(stat = "identity", position = "stack") +
  labs(title = "Inventory Quantity by Category", x = "Category", y = "Quantity Available") +
  theme_minimal()