departments <- c("Marketing", "Sales", "HR", "Engineering")
employees <- c(50, 80, 20, 50) # Must add up to your total (200)
percentages <- round(100 * employees / sum(employees), 1)
labels <- paste(departments, "-", percentages, "%")
pie(employees, 
    labels = labels, 
    col = rainbow(length(employees)), 
    main = "Employee Distribution by Department")
