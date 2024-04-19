# Load necessary libraries
library(ggplot2)

# Assuming lf_train is your dataframe containing numeric variables
# Subset lf_train to include only numeric variables
lf_train_num <- lf_train[, sapply(lf_train, is.numeric)]

# Create histogram for 'count' versus 'age'
print(ggplot(data = lf_train_num, aes(x = age)) +
        geom_histogram(bins = 50, fill = "skyblue", color = "black", alpha = 0.7) +
        labs(x = "Age", y = "No. of People") +
        theme_minimal())
