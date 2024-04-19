library(ggplot2)

# Replace "path/to/your/file.csv" with the actual path to your CSV file
data <- read.csv("D:/Repo/Repo/Medical Insurance/medical_insurance_updated.csv")

# Create scatterplot
scatterplot_charges_bmi <- ggplot(data, aes(x = bmi, y = charges, color = smoker)) +
  geom_point() +
  labs(x = "BMI", y = "Charges") +
  scale_color_manual(values = c("chocolate", "cadetblue"), name = "Smoker") +
  theme_minimal()

# Print the scatterplot
print(scatterplot_charges_bmi)
