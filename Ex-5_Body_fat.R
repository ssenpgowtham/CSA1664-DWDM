# Age and body fat data
age <- c(23, 23, 27, 27, 39, 41, 47, 49, 50, 52, 54, 54, 56, 57, 58, 58, 60, 61)
body_fat <- c(9.5, 26.5, 7.8, 17.8, 31.4, 25.9, 27.4, 27.2, 31.2, 34.6, 42.5, 28.8, 33.4, 30.2, 34.1, 32.9, 41.2, 35.7)

# (a) Calculate mean, median, and standard deviation
mean_age <- mean(age)
median_age <- median(age)
sd_age <- sd(age)

mean_fat <- mean(body_fat)
median_fat <- median(body_fat)
sd_fat <- sd(body_fat)

# (b) Boxplots
par(mfrow = c(1, 2))
boxplot(age, main = "Age", ylab = "Age", col = "lightblue")
boxplot(body_fat, main = "Body Fat %", ylab = "Body Fat %", col = "lightgreen")

# (c) Scatter plot and q-q plot
par(mfrow = c(1, 2))
plot(age, body_fat, xlab = "Age", ylab = "Body Fat %", main = "Scatter Plot")

qqplot_age <- qqplot(age, main = "Q-Q Plot: Age")
qqline(age)

qqplot_fat <- qqplot(body_fat, main = "Q-Q Plot: Body Fat %")
qqline(body_fat)

# Print the results
cat("Age: Mean =", mean_age, ", Median =", median_age, ", SD =", sd_age, "\n")
cat("Body Fat %: Mean =", mean_fat, ", Median =", median_fat, ", SD =", sd_fat, "\n")
