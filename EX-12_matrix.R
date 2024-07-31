# Create a matrix for the data
data <- matrix(c(18, 2, 20, 22, 28, 10, 20, 40, 40), nrow = 3, byrow = TRUE)
rownames(data) <- c("5-6 years", "7-8 years", "9-10 years")
colnames(data) <- c("A", "B", "C")

# Calculate covariance between B and C
cov_bc <- cov(data[, "B"], data[, "C"])
print(paste("Covariance between B and C:", cov_bc))

# Calculate sample covariance matrix for the preferences
cov_matrix <- cov(data)
print("Sample Covariance Matrix:")
print(cov_matrix)

# Calculate correlation between B and C
cor_bc <- cor(data[, "B"], data[, "C"])
print(paste("Correlation between B and C:", cor_bc))

# Calculate sample correlation matrix for the preferences
cor_matrix <- cor(data)
print("Sample Correlation Matrix:")
print(cor_matrix)
