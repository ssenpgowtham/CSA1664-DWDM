# Data for Class A and Class B
class_a <- c(76, 35, 47, 64, 95, 66, 89, 36, 84)
class_b <- c(51, 56, 84, 60, 59, 70, 63, 66, 50)

# Calculate mean, median, and range for each class
mean_a <- mean(class_a)
mean_b <- mean(class_b)

median_a <- median(class_a)
median_b <- median(class_b)

range_a <- max(class_a) - min(class_a)
range_b <- max(class_b) - min(class_b)

# Determine which class scored higher mean, median, and range
mean_comparison <- ifelse(mean_a > mean_b, "Class A", "Class B")
median_comparison <- ifelse(median_a > median_b, "Class A", "Class B")
range_comparison <- ifelse(range_a > range_b, "Class A", "Class B")

# Print the results
cat("Mean:", mean_comparison, "had a higher mean.\n")
cat("Median:", median_comparison, "had a higher median.\n")
cat("Range:", range_comparison, "had a higher range.\n")

# Plot boxplot
boxplot(class_a, class_b, names = c("Class A", "Class B"), col = c("skyblue", "lightgreen"),
        main = "Comparison of Exam Scores for Class A and Class B",
        ylab = "Scores", xlab = "Class")
