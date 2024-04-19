library(ggplot2)

# Replace "path/to/your/file.csv" with the actual path to your CSV file
data <- read.csv("D:/Repo/Repo/Medical Insurance/medical_insurance_updated.csv")
scatterplot_charges_age <- ggplot(data, aes(x = age, y = charges, color = smoker)) +
  geom_point() +
  labs(x = "Age", y = "Charges") +
  scale_color_manual(values = c("cyan3", "brown"), name = "Smoker") +
  theme_minimal()

# Print the scatterplot
print(scatterplot_charges_age)