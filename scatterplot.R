# Assuming lf_train is your dataframe containing age, bmi, children, and charges information
# Select the columns of interest
data <- lf_train[, c("age", "bmi", "children", "charges")]

# Convert charges column to numeric
data$charges <- as.numeric(data$charges)

# Define bubble sizes based on charges (you can adjust the scaling factor as needed)
bubble_sizes <- sqrt(data$charges) * 0.1

# Create scatterplot for age with bubbles
plot(data$age, 
     main = "Scatterplot of Age with Bubble Size Representing Charges", 
     xlab = "Count", 
     ylab = "Age", 
     pch = 19,     # Point shape
     col = "blue") # Point color

# Add bubbles
symbols(data$age, rep(0, nrow(data)), circles = bubble_sizes, inches = 0.2, add = TRUE)
 