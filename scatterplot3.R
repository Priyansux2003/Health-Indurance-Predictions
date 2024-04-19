# Assuming lf_train is your dataframe containing age, bmi, children, and charges information
# Select the columns of interest
data <- lf_train[, c("age", "bmi", "children", "charges")]

# Convert charges column to numeric
data$charges <- as.numeric(data$charges)

# Create scatterplot for children
plot(data$children, 
     data$charges,
     main = "Scatterplot of Children and Charges", 
     xlab = "Children", 
     ylab = "Charges", 
     pch = 16,     # Point shape
     col = "pink") # Point color

