# PHB228 - Public Health Data Visualization Assignment
# Spring 2025
# Your Name: ________________________

# Load required libraries
library(ggplot2)
library(dplyr)
library(tidyr)
library(maps)    # For geographic visualizations

#-----------------------------------------------------------------
# Task 1: Setup
#-----------------------------------------------------------------

# Load the dataset
health_data <- read.csv("public_health_data.csv")

# Examine the structure of the dataset
str(health_data)
summary(health_data)

# Handle missing values
# Your code here


#-----------------------------------------------------------------
# Task 2: Visualize Health Outcomes by Demographic Factors
#-----------------------------------------------------------------

# Create a boxplot showing BMI distribution across age groups
bmi_plot <- ggplot(health_data, aes(x = age_group, y = bmi)) +
  # Your code here

# Save your plot
ggsave("figures/bmi_by_age.png", bmi_plot, width = 8, height = 6)

# Create a bar chart showing vaccination rates by education level
# Your code here

# Save your plot
# Your code here


#-----------------------------------------------------------------
# Task 3: Create a Geographic Visualization
#-----------------------------------------------------------------

# Create a choropleth map showing health insurance coverage by region
# Calculate insurance rates by region first
region_insurance <- health_data %>%
  group_by(region) %>%
  # Your code here

# Create map
# Your code here

# Save your plot
# Your code here


#-----------------------------------------------------------------
# Task 4: Time-Series Analysis
#-----------------------------------------------------------------

# Load the time series data
time_data <- read.csv("health_timeseries_data.csv")

# Create a line graph showing trends in health metric over time
# Your code here

# Save your plot
# Your code here


#-----------------------------------------------------------------
# Task 5: Documentation and Interpretation
#-----------------------------------------------------------------

# Write your interpretations below:

# Interpretation of BMI by age group visualization:
# 

# Interpretation of vaccination rates by education level:
# 

# Interpretation of health insurance coverage map:
# 

# Interpretation of time-series trend:
#
