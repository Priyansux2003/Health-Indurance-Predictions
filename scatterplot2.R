# Assuming lf_train is your dataframe containing age, bmi, children, and charges information
# Select the columns of interest
data <- lf_train[, c("age", "bmi", "children", "charges")]

# Convert charges column to numeric
data$charges <- as.numeric(data$charges)

# Create scatterplot for bmi
plot(data$bmi, 
     data$charges,
     main = "Scatterplot of BMI and Charges", 
     xlab = "BMI", 
     ylab = "Charges", 
     pch = 16,     # Point shape
     col = "gold") # Point color
