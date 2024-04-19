library(readr)

# Load dataset
data <- read_csv("D:/Repo/Repo/Medical Insurance/medical_insurance (1).csv")

# Create new columns for southwest, southeast, northwest, and northeast
data$southwest <- ifelse(data$region == "southwest", 1, 0)
data$southeast <- ifelse(data$region == "southeast", 1, 0)
data$northwest <- ifelse(data$region == "northwest", 1, 0)
data$northeast <- ifelse(data$region == "northeast", 1, 0)

# Drop the original region column
data <- data[ , !(names(data) %in% "region")]

# Write the updated data to a new CSV file using write_csv from readr package
#write_csv(data, "D:/Repo/Repo/Medical Insurance/medical_insurance_updated.csv")


# Replace "path/to/your/file.csv" with the actual path to your CSV file
data <- read_csv("D:/Repo/Repo/Medical Insurance/medical_insurance_updated.csv")
