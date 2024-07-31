# Given data
data <- c(200, 300, 400, 600, 1000)

# Min-max normalization
min_max <- function(x) {
  (x - min(x)) / (max(x) - min(x))
}

min_max_normalized <- min_max(data)
min_max_normalized

# Z-score normalization
z_score <- function(x) {
  (x - mean(x)) / sd(x)
}

z_score_normalized <- z_score(data)
z_score_normalized
