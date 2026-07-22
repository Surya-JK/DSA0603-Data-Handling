sales <- data.frame(
  Product = c("Product A","Product B","Product C"),
  January = c(2000,1500,1200),
  February = c(2200,1800,1400),
  March = c(2400,1600,1100)
)

data <- as.matrix(sales[,2:4])

barplot(data,
        beside = TRUE,
        names.arg = sales$Product,
        col = c("red","green","blue"),
        legend = colnames(data),
        xlab = "Products",
        ylab = "Sales",
        main = "Monthly Product Sales")

months <- c("January","February","March")
A <- c(2000,2200,2400)
B <- c(1500,1800,1600)
C <- c(1200,1400,1100)

plot(1:3,
     A,
     type = "n",
     xaxt = "n",
     ylim = c(0, max(A+B+C)),
     xlab = "Month",
     ylab = "Sales",
     main = "Overall Sales Trend")

axis(1, at = 1:3, labels = months)

polygon(c(1:3,3:1),
        c(rep(0,3), rev(A)),
        col = "lightblue",
        border = NA)

polygon(c(1:3,3:1),
        c(A, rev(A+B)),
        col = "lightgreen",
        border = NA)

polygon(c(1:3,3:1),
        c(A+B, rev(A+B+C)),
        col = "pink",
        border = NA)

legend("topleft",
       legend = c("Product A","Product B","Product C"),
       fill = c("lightblue","lightgreen","pink"))

print(sales)
