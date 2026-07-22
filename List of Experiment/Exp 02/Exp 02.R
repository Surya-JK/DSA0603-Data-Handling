library(wordcloud)
library(RColorBrewer)

customer <- data.frame(
  CustomerID = c(1,2,3,4,5),
  Age = c(25,30,35,28,40),
  Satisfaction = c(4,5,3,4,5)
)

hist(customer$Age,
     col = "skyblue",
     border = "black",
     main = "Customer Age Distribution",
     xlab = "Age",
     ylab = "Frequency")

satisfaction_count <- table(customer$Satisfaction)

pie(satisfaction_count,
    labels = names(satisfaction_count),
    col = rainbow(length(satisfaction_count)),
    main = "Customer Satisfaction Distribution")

customer$AgeGroup <- ifelse(customer$Age <= 30, "20-30", "31-40")

data <- table(customer$AgeGroup, customer$Satisfaction)

barplot(data,
        beside = FALSE,
        col = c("red","green","blue"),
        legend = rownames(data),
        main = "Satisfaction Score by Age Group",
        xlab = "Satisfaction Score",
        ylab = "Number of Customers")
