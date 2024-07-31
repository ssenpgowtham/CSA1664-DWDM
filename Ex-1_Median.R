# Given data
age_intervals <- c("1-5", "5-15", "15-20", "20-50", "50-80", "80-110")
frequencies <- c(200, 450, 300, 1500, 700, 44)

# Calculate cumulative frequencies
cumulative_freq <- cumsum(frequencies)

# Find the class interval containing the median
N <- sum(frequencies)
median_class_index <- which(cumulative_freq >= N / 2)[1]
median_class <- age_intervals[median_class_index]

# Extract lower and upper bounds of the median class
median_class_bounds <- as.numeric(strsplit(median_class, "-")[[1]])
L <- median_class_bounds[1]
U <- median_class_bounds[2]

# Calculate the approximate median
F <- cumulative_freq[median_class_index - 1]
f <- frequencies[median_class_index]
w <- U - L
median <- L + ((N / 2 - F) / f) * w
median

