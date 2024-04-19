# Assuming lf_train is your dataframe containing sex information

# Filter the dataframe for only 'male' and 'female' categories
lf_train_sex <- lf_train[lf_train$sex %in% c("male", "female"), ]

# Get the value counts for 'male' and 'female'
sex_counts <- table(lf_train_sex$sex)

# Calculate percentages
percentages <- round(100 * sex_counts / sum(sex_counts), 1)

# Create labels with percentages
labels_with_percentages <- paste0(names(sex_counts), " (", percentages, "%)")

# Create a pie chart
pie(sex_counts, 
    labels = labels_with_percentages,  # Labels with percentages for the slices
    col = c("red", "blue"),      # Colors for the slices
    main = "Sex Distribution")         # Title of the pie chart
