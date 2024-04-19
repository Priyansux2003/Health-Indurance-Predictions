library(readr)
library(dplyr)
library(ggplot2)
library(caret)
library(e1071)

# Load dataset
lf_all <- read_csv("D:/Repo/Repo/Medical Insurance/medical_insurance (1).csv")
spec(data)
column_spec <- spec(data)
print(column_spec)

# Splitting data
set.seed(0)
train_idx <- sample(nrow(lf_all), floor(0.8 * nrow(lf_all)), replace = FALSE)
lf_train <- lf_all[train_idx, ]
lf_test <- lf_all[-train_idx, ]

# Define modeling functions

# Support Vector Machine
svm_reg <- function(train_x, train_y) {
  # Ensure train_y is coerced to a vector
  train_y <- as.vector(train_y)
  model <- svm(train_y ~ ., data = train_x, kernel = "linear")
  return(model)
}

# Model Training
svm_cv_result <- custom_cv(svm_reg, lf_train[, -7], lf_train[, 7])
print(svm_cv_result)

# Final model
final_model <- svm_reg(lf_train[, -7], lf_train[, 7])

# Evaluation
y_test_pred <- predict(final_model, newdata = lf_test[, -7])
rmse <- sqrt(mean((lf_test[, 7] - y_test_pred)^2))
print(paste("RMSE:", rmse))

mae <- mean(abs(lf_test[, 7] - y_test_pred))
print(paste("MAE:", mae))

