# Dataset setup
biz_df <- data.frame(
  Year = 2016:2025,
  Sales = c(150, 170, 200, 240, 260, 300, 340, 390, 430, 480),
  Profit = c(20, 25, 32, 40, 42, 55, 65, 72, 82, 95),
  Customers = c(1200, 1500, 1800, 2200, 2400, 2800, 3300, 3800, 4200, 4700),
  Branches = c(5, 6, 7, 8, 8, 10, 11, 12, 13, 15)
)

# Q1: Yearly Sales Line Chart
plot(biz_df$Year, biz_df$Sales, type = "b", pch = 19, col = "darkblue", lwd = 2,
     xlab = "Year", ylab = "Sales (₹ Lakhs)", main = "Yearly Sales Trajectory (2016-2025)")
grid()
# Q2: Business Performance Bubble Plot
ggplot(biz_df, aes(x = Sales, y = Profit, size = Customers)) +
  geom_point(alpha = 0.6, color = "darkgreen") +
  geom_text(aes(label = Year), vjust = -1.2, size = 3) +
  scale_size_continuous(range = c(3, 10)) +
  theme_minimal() +
  labs(title = "Sales vs Profit & Customer Scale",
       x = "Sales (₹ Lakhs)", y = "Profit (₹ Lakhs)", size = "Customers")
# Q3: Correlation Matrix
biz_cor <- cor(biz_df[, c("Sales", "Profit", "Customers", "Branches")])
print(round(biz_cor, 4))

# Correlation Matrix Output:
#           Sales  Profit Customers Branches
# Sales    1.0000  0.9976    0.9984   0.9958
# Profit   0.9976  1.0000    0.9961   0.9950
# Customers 0.9984 0.9961    1.0000   0.9939
# Branches 0.9958  0.9950    0.9939   1.0000
# Q4: Business Scatter Plot Matrix
pairs(biz_df[, c("Sales", "Profit", "Customers", "Branches")],
      main = "Business Growth Scatter Plot Matrix",
      col = "darkblue", pch = 19)
