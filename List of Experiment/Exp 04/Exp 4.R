product <- data.frame(
  ProductID = c(1,2,3,4,5),
  ProductName = c("Product A","Product B","Product C","Product D","Product E"),
  Quantity = c(250,175,300,200,220),
  Price = c(20,15,18,25,22),
  Category = c("Category 1","Category 1","Category 2","Category 2","Category 1")
)

barplot(product$Quantity,
        names.arg = product$ProductName,
        col = "skyblue",
        xlab = "Product",
        ylab = "Quantity Available",
        main = "Product Inventory")

inventory <- table(product$Category, product$ProductName)

barplot(inventory,
        beside = FALSE,
        col = c("red","green"),
        legend = rownames(inventory),
        xlab = "Product",
        ylab = "Quantity",
        main = "Quantity by Product Category")

plot(product$Price,
     product$Quantity,
     pch = 19,
     col = "blue",
     xlab = "Price ($)",
     ylab = "Quantity Available",
     main = "Price vs Quantity")

abline(lm(Quantity ~ Price, data = product),
       col = "red",
       lwd = 2)

cat("\nInsight:\n")
cat("The scatter plot shows the relationship between product price and quantity available.\n")
cat("The trend line indicates that there is no strong relationship between price and available quantity.\n")
