grades <- c("A (90-100)", "B (80-89)", "C (70-79)", "D (60-69)", "E (<60)")
counts <- c(5, 10, 8, 4, 3)
midpoints <- c(95, 84.5, 74.5, 64.5, 54.5)

barplot(counts, 
        names.arg = c("A", "B", "C", "D", "E"), 
        col = "skyblue", 
        main = "Student Grade Distribution",
        xlab = "Grade Category", 
        ylab = "Number of Students")

total_students <- sum(counts)
weighted_sum <- sum(counts * midpoints)
average_score <- weighted_sum / total_students
cat("Total Students:", total_students, "\n")
cat("Estimated Average Score:", round(average_score, 2))

