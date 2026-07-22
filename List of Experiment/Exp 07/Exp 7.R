customer <- data.frame(
  CustomerID = c(1,2,3),
  Age = c(28,35,42),
  Gender = c("Female","Male","Female"),
  Income = c(50000,60000,75000)
)

barplot(customer$Age,
        names.arg = customer$CustomerID,
        col = "skyblue",
        xlab = "Customer ID",
        ylab = "Age",
        main = "Customer Age Distribution")

gender <- table(customer$Gender)

pie(gender,
    labels = names(gender),
    col = c("pink","lightblue"),
    main = "Customer Gender Distribution")

print(customer)
