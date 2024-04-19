library(ggplot2)

# Replace "path/to/your/file.csv" with the actual path to your CSV file
data <- read.csv("D:/Repo/Repo/Medical Insurance/medical_insurance_updated.csv")

# Create scatterplot
scatterplot_charges_children <- ggplot(data, aes(x = children, y = charges, color = sex)) +
  geom_point() +
  labs(x = "Children", y = "Charges") +
  scale_color_manual(values = c("darkorange", "blue")) +
  theme_minimal()

# Print the scatterplot
print(scatterplot_charges_children)
