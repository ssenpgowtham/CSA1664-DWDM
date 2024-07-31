# Given data
data <- c(11, 13, 13, 15, 15, 16, 19, 20, 20, 20, 21, 21, 22, 23, 24, 30, 40, 45, 45, 45, 71, 72, 73, 75)

# Number of bins
num_bins <- 5

# Bin width
bin_width <- ceiling((max(data) - min(data)) / num_bins)

# Bin boundaries
bin_boundaries <- seq(min(data), max(data), by = bin_width)

# Bin indices
bin_indices <- cut(data, breaks = bin_boundaries, labels = FALSE)

# Smoothing by bin mean
bin_means <- tapply(data, bin_indices, mean)
smoothed_mean <- sapply(bin_indices, function(i) bin_means[i])

# Smoothing by bin median
bin_medians <- tapply(data, bin_indices, median)
smoothed_median <- sapply(bin_indices, function(i) bin_medians[i])

# Smoothing by bin boundaries
smoothed_boundaries <- sapply(bin_indices, function(i) bin_boundaries[i])

# Print the results
print("Smoothing by bin mean:")
print(smoothed_mean)

print("Smoothing by bin median:")
print(smoothed_median)

print("Smoothing by bin boundaries:")
print(smoothed_boundaries)
