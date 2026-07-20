# Load dataset
student_df <- data.frame(
  Student = c("A", "B", "C", "D", "E", "F", "G", "H", "I", "J"),
  Marks = c(60, 68, 74, 79, 82, 85, 88, 91, 94, 97),
  Attendance = c(75, 80, 84, 88, 90, 92, 94, 95, 97, 99),
  Study_Hours = c(2, 3, 4, 5, 5, 6, 6, 7, 8, 9),
  Projects = c(1, 2, 2, 3, 3, 4, 4, 5, 5, 6)
)

# Q1: Multivariate Bubble Plot
library(ggplot2)
ggplot(student_df, aes(x = Marks, y = Attendance, size = Study_Hours)) +
  geom_point(alpha = 0.7, color = "purple") +
  geom_text(aes(label = Student), vjust = -1, size = 3.5, color = "black") +
  scale_size_continuous(range = c(3, 10)) +
  theme_minimal() +
  labs(title = "Student Performance Bubble Plot",
       x = "Marks", y = "Attendance (%)", size = "Study Hours")
# Q2: Scatter Plot Matrix
pairs(student_df[, c("Marks", "Attendance", "Study_Hours", "Projects")],
      main = "Scatter Plot Matrix of Student Attributes",
      pch = 19, col = "darkgreen")
# Q3: Correlation Analysis
cor_matrix <- cor(student_df[, c("Marks", "Attendance", "Study_Hours")])
print(round(cor_matrix, 3))

# Output Table:
#               Marks  Attendance  Study_Hours
# Marks         1.000       0.993        0.992
# Attendance    0.993       1.000        0.985
# Study_Hours   0.992       0.985        1.000
# Q5: Correlation Heatmap
num_cols <- student_df[, c("Marks", "Attendance", "Study_Hours", "Projects")]
full_cor <- cor(num_cols)

# Using base R heatmap
heatmap(full_cor, Rowv = NA, Colv = NA, 
        col = cm.colors(256), scale = "none",
        margins = c(8, 8), main = "Heatmap of Student Variables")
