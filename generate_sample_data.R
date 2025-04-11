# Script to generate sample public health dataset for PHB228 assignment
# This script creates two CSV files for the assignment:
# 1. public_health_data.csv - Demographics and health measures
# 2. health_timeseries_data.csv - Time series data of health metrics by region

# Load required libraries
library(dplyr)

# Set seed for reproducibility
set.seed(228)

# Generate sample data
n <- 500  # number of observations

# Create regions
regions <- c("Northeast", "Midwest", "South", "West")
states <- c(
  "ME", "NH", "VT", "MA", "RI", "CT", "NY", "NJ", "PA",  # Northeast
  "OH", "MI", "IN", "IL", "WI", "MN", "IA", "MO", "ND", "SD", "NE", "KS",  # Midwest
  "DE", "MD", "DC", "VA", "WV", "NC", "SC", "GA", "FL", "KY", "TN", "AL", "MS", "AR", "LA", "OK", "TX",  # South
  "MT", "ID", "WY", "CO", "NM", "AZ", "UT", "NV", "WA", "OR", "CA", "AK", "HI"  # West
)

# Map states to regions
state_region <- data.frame(
  state = states,
  region = c(
    rep("Northeast", 9),
    rep("Midwest", 12),
    rep("South", 17),
    rep("West", 13)
  )
)

# Generate data
public_health_data <- data.frame(
  id = 1:n,
  
  # Demographics
  age_group = sample(c("18-24", "25-34", "35-44", "45-54", "55-64", "65+"), n, replace = TRUE, 
                   prob = c(0.1, 0.2, 0.2, 0.2, 0.15, 0.15)),
  gender = sample(c("Male", "Female", "Other"), n, replace = TRUE, 
                 prob = c(0.48, 0.51, 0.01)),
  education = sample(c("Less than HS", "High School", "Some College", "Bachelor's", "Graduate"), 
                    n, replace = TRUE, prob = c(0.1, 0.3, 0.25, 0.25, 0.1)),
  income_group = sample(c("Low", "Middle", "High"), n, replace = TRUE, 
                       prob = c(0.3, 0.5, 0.2)),
  
  # Geographic info
  state = sample(states, n, replace = TRUE),
  
  # Health metrics
  bmi = round(rnorm(n, mean = 26.5, sd = 4.5), 1),
  vaccinated = sample(c(TRUE, FALSE), n, replace = TRUE, prob = c(0.7, 0.3)),
  insured = sample(c(TRUE, FALSE), n, replace = TRUE, prob = c(0.85, 0.15)),
  chronic_condition = sample(c(TRUE, FALSE), n, replace = TRUE, prob = c(0.3, 0.7))
)

# Add region based on state
public_health_data <- public_health_data %>%
  left_join(state_region, by = "state")

# Make BMI more realistic based on age
public_health_data <- public_health_data %>%
  mutate(bmi = case_when(
    age_group == "18-24" ~ bmi - 1.5,
    age_group == "25-34" ~ bmi - 0.5,
    age_group == "35-44" ~ bmi,
    age_group == "45-54" ~ bmi + 0.5,
    age_group == "55-64" ~ bmi + 1,
    age_group == "65+" ~ bmi + 0.8,
    TRUE ~ bmi
  ))

# Make vaccination status more likely with higher education
public_health_data <- public_health_data %>%
  mutate(vaccinated = case_when(
    education == "Less than HS" & runif(n) > 0.5 ~ FALSE,
    education == "High School" & runif(n) > 0.6 ~ FALSE,
    education == "Some College" & runif(n) > 0.7 ~ FALSE,
    education == "Bachelor's" & runif(n) > 0.8 ~ FALSE,
    education == "Graduate" & runif(n) > 0.9 ~ FALSE,
    TRUE ~ vaccinated
  ))

# Make insurance more likely with higher income
public_health_data <- public_health_data %>%
  mutate(insured = case_when(
    income_group == "Low" & runif(n) > 0.7 ~ FALSE,
    income_group == "Middle" & runif(n) > 0.85 ~ FALSE,
    income_group == "High" & runif(n) > 0.95 ~ FALSE,
    TRUE ~ insured
  ))

# Add some missing values to make it more realistic
set.seed(123)
rows_to_na <- sample(1:n, 15)
public_health_data$bmi[rows_to_na[1:5]] <- NA
public_health_data$vaccinated[rows_to_na[6:10]] <- NA
public_health_data$insured[rows_to_na[11:15]] <- NA

# Generate time-series data (health metric by year)
years <- 2015:2024
time_series_data <- data.frame(
  year = rep(years, each = 4),
  region = rep(regions, times = length(years)),
  health_metric = numeric(length(years) * length(regions))
)

# Generate slightly different trends for each region
# Northeast: steady increase
# Midwest: slight increase with plateau
# South: fluctuating with overall increase
# West: rapid increase then leveling off

for (r in regions) {
  base_value <- case_when(
    r == "Northeast" ~ 35,
    r == "Midwest" ~ 32,
    r == "South" ~ 38,
    r == "West" ~ 30,
    TRUE ~ 30
  )
  
  indices <- which(time_series_data$region == r)
  years_normalized <- (1:length(years)) / length(years)
  
  # Create different trend patterns
  if (r == "Northeast") {
    # Steady increase
    trend <- 1.2 * years_normalized + rnorm(length(years), 0, 0.1)
  } else if (r == "Midwest") {
    # Increase with plateau
    trend <- 0.8 * (1 - exp(-2 * years_normalized)) + rnorm(length(years), 0, 0.1)
  } else if (r == "South") {
    # Fluctuating with increase
    trend <- 0.9 * years_normalized + 0.2 * sin(years_normalized * 15) + rnorm(length(years), 0, 0.1)
  } else { # West
    # Rapid increase then level
    trend <- 1.5 * (1 - exp(-3 * years_normalized)) + rnorm(length(years), 0, 0.1)
  }
  
  # Scale to reasonable values
  trend <- trend * 10
  
  # Assign to data frame
  time_series_data$health_metric[indices] <- base_value + trend
}

# Round to one decimal place
time_series_data$health_metric <- round(time_series_data$health_metric, 1)

# Write data to CSV files
write.csv(public_health_data, "public_health_data.csv", row.names = FALSE)
write.csv(time_series_data, "health_timeseries_data.csv", row.names = FALSE)

# Print confirmation
cat("Sample data generated and saved to:\n")
cat("1. public_health_data.csv\n")
cat("2. health_timeseries_data.csv\n")
cat("\nDataset information:\n")
cat("- Individual records:", nrow(public_health_data), "\n")
cat("- Time series observations:", nrow(time_series_data), "\n")
cat("- Years covered in time series:", min(time_series_data$year), "to", max(time_series_data$year), "\n")
