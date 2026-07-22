product <- c("A","B","C","D","E")
sales <- c(25000,30000,22000,28000,26000)

barplot(sales,
        names.arg=product,
        col="orange",
        xlab="Products",
        ylab="Sales",
        main="Top Selling Products")