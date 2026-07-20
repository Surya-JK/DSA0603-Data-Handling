# Q1: Create Base Line Chart
sales_data <- data.frame(
  Month = c("Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"),
  Sales = c(120, 135, 150, 170, 190, 220, 210, 230, 250, 270, 290, 320)
)

plot(sales_data$Sales, type = "o", col = "blue", 
     main = "Monthly Sales Trend", xlab = "Month Index", ylab = "Sales (₹ Lakhs)")
# Q2: Add Custom Month Names
plot(sales_data$Sales, type = "o", xaxt = "n",
     main = "Monthly Sales", xlab = "Month", ylab = "Sales (₹ Lakhs)")
axis(1, at = 1:12, labels = sales_data$Month)
# Q3: Line chart with solid filled points (pch = 19)
plot(sales_data$Sales, type = "b", pch = 19, col = "darkblue", cex = 1.2, xaxt = "n",
     main = "Monthly Sales Trend", xlab = "Month", ylab = "Sales (₹ Lakhs)")
axis(1, at = 1:12, labels = sales_data$Month)
# Q4: Complete Temporal Chart with Grid Lines & Axis Labels
plot(sales_data$Sales, type = "o", pch = 19, col = "royalblue", lwd = 2,
     xaxt = "n", xlab = "Month", ylab = "Sales (₹ Lakhs)",
     main = "Temporal Sales Performance (Annual)")
axis(1, at = 1:12, labels = sales_data$Month, las = 1)
grid(nx = NULL, ny = NULL, col = "lightgray", lty = "dotted")
