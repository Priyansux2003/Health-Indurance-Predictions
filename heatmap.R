# Assuming lf_train_num is your dataframe containing numeric variables

# Load necessary libraries
library(arrow)
library(stats)

# Convert lf_train_num to a dataframe
lf_train_num_df <- as.data.frame(lf_train_num)

# Calculate the correlation matrix
correlation_matrix <- cor(lf_train_num_df)

# Plot the heatmap
heatmap(correlation_matrix,
        col = colorRampPalette(c("blue", "white", "red"))(100),  # Color scheme
        main = "Heatmap of Correlation",  # Title of the heatmap
        xlab = "Variables",                # X-axis label
        ylab = "Variables",                # Y-axis label
        cexRow = 1,                        # Font size for row labels
        cexCol = 1,                        # Font size for column labels
        symm = TRUE)                       # Show symmetric plot
