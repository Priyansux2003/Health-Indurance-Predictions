library(ggplot2)

# Replace "path/to/your/file.csv" with the actual path to your CSV file
data <- read.csv("D:/Repo/Repo/Medical Insurance/medical_insurance (1).csv")

# Create scatterplot
scatterplot_charges_children <- ggplot(data, aes(x = children, y = charges, color = region)) +
  geom_point() +
  labs(x = "Children", y = "Charges") +
  scale_color_manual(values = c("darkorange", "blue", "green", "red"),
                     breaks = c("southwest", "southeast", "northwest", "northeast"),
                     labels = c("Southwest", "Southeast", "Northwest", "Northeast"),
                     name = "Region") +
  theme_minimal()

# Print the scatterplot
print(scatterplot_charges_children)
