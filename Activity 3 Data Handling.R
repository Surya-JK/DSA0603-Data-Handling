fruit_data <- c(Apple = 35, Banana = 10, Mango = 40, Orange = 30, Grapes = 5)
most_preferred <- names(fruit_data[fruit_data == max(fruit_data)])
print(paste("Most preferred fruit:", most_preferred))
least_preferred <- names(fruit_data[fruit_data == max(fruit_data)])
print(paste("Least preferred fruit:", least_preferred))
barplot(fruit_data, 
        main = "Survey of Favourite Fruits", 
        xlab = "Fruits", 
        ylab = "Number of Votes", 
        col = c("red", "yellow", "orange", "darkorange", "purple"))
