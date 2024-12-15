# Load necessary libraries
library(dplyr)  # For data manipulation

# Define file paths
input_path <- "data/covid_vulnerabilities_clean.csv"  # Path to processed CSV file
output_path <- "results/covid_vulnerabilities_analysis.csv"  # Output path

# Load the dataset
covid_data <- read.csv(input_path)

# Filter and preprocess data
covid_data <- covid_data %>%
  filter(!is.na(income_loss)) %>%  # Remove rows with missing income_loss values
  mutate(
    income_loss_pct = income_loss / total_income * 100,  # Calculate income loss percentage
    severe_impact = ifelse(income_loss_pct > 50, 1, 0)  # Binary variable for severe impact
  )

# Summary statistics
summary_stats <- covid_data %>%
  summarise(
    avg_income_loss = mean(income_loss_pct, na.rm = TRUE),
    severe_cases = sum(severe_impact, na.rm = TRUE),
    total_cases = n()
  )
print(summary_stats)

# Save summary statistics to a file
write.csv(summary_stats, "results/summary_stats.csv", row.names = FALSE)

# Run logistic regression model
model <- glm(severe_impact ~ age + gender + sector, data = covid_data, family = binomial())
summary(model)

# Save model predictions to a file
covid_data <- covid_data %>%
  mutate(predicted_severe = predict(model, type = "response"))
write.csv(covid_data, output_path, row.names = FALSE)

# Notes:
# - Replace variable names (e.g., income_loss, total_income, age, gender, sector) with actual column names in the dataset.
# - Adjust model formula based on the methodology described in the project.
