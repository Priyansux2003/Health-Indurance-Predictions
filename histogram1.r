# Load necessary libraries
library(ggplot2)

# Assuming lf_train is your dataframe containing numeric variables
# Subset lf_train to include only numeric variables
lf_train_num <- lf_train[, sapply(lf_train, is.numeric)]

# Set the number of columns
n <- ncol(lf_train_num)

# Create subplots
par(mfrow = c(n, 1), mar = c(3, 3, 1, 1))

# Loop through columns
# Define function to calculate breaks
calculate_breaks <- function(x, interval = 5000) {
  seq(0, max(x) + interval, by = interval)
}

# Loop through each numerical column
for (i in 1:n) {
  # Get column name
  col_name <- names(lf_train_num)[i]
  
  # Calculate breaks for x-axis
  breaks <- calculate_breaks(lf_train_num[[col_name]])
  
  # Create histogram
  print(ggplot(data = lf_train_num, aes(x = .data[[col_name]])) +
          geom_histogram(bins = 50, fill = "skyblue", color = "black", alpha = 0.7) +
          labs(x = col_name, y = "No. of People") +
          scale_x_continuous(breaks = breaks) +  # Set custom breaks on x-axis
          theme_minimal())
}

