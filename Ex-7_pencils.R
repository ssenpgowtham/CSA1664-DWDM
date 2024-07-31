# Given data
pencils <- c(9, 25, 23, 12, 11, 6, 7, 8, 9, 10)

# Mean
mean_pencils <- mean(pencils)

# Median
median_pencils <- median(pencils)

# Mode (using the 'Mode' function)
Mode <- function(x) {
  ux <- unique(x)
  ux[which.max(tabulate(match(x, ux)))]
}
mode_pencils <- Mode(pencils)

# Print the results
cat("Mean:", mean_pencils, "\n")
cat("Median:", median_pencils, "\n")
cat("Mode:", mode_pencils, "\n")
