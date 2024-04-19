# Assuming lf_train is your dataframe containing smoker and region information

# Filter the dataframe for only the specified regions
lf_train_filtered <- lf_train[lf_train$region %in% c("northwest", "northeast", "southwest", "southeast"), ]

# Count the number of observations in each region
region_counts <- table(lf_train_filtered$region)

# Create labels for each region
labels <- names(region_counts)

# Calculate percentages for each region (assuming equal division)
percentages <- rep(25, length(labels))

# Create labels with percentages for each region
labels_with_percentages <- paste0(labels, "\n", percentages, "%")

# Create a pie chart with four slices
pie(region_counts, 
    labels = labels_with_percentages,  # Labels with percentages for the slices
    col = rainbow(length(labels)),     # Colors for the slices
    main = "Smoker Distribution by Region")     # Title of the pie chart
