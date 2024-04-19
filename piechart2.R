# Assuming lf_train is your dataframe containing smoker information

# Get the value counts for 'smoker'
smoker_counts <- table(lf_train$smoker)

# Create labels
labels <- c("Non-smoker", "Smoker")

# Calculate percentages
percentages <- round(100 * smoker_counts / sum(smoker_counts), 1)

# Create labels with percentages
labels_with_percentages <- paste0(labels, "\n", percentages, "%")

# Create a pie chart
pie(smoker_counts, 
    labels = labels_with_percentages,  # Labels with percentages for the slices
    col = c("yellow", "purple"),      # Colors for the slices
    main = "Smoker Distribution")      # Title of the pie chart
