# Public Health Data Visualization with R

## Overview
In this assignment, you will practice creating effective data visualizations using R and the ggplot2 package. You will work with public health data to visualize patterns and relationships relevant to epidemiology and health policy.

## Learning Objectives
- Apply R programming skills to load and manipulate public health datasets
- Create appropriate visualizations for different types of variables
- Interpret visualizations in the context of public health

## Tasks

### 1. Setup (10 points)
- Load the required packages: `ggplot2`, `dplyr`, and `tidyr`
- Load the provided dataset `public_health_data.csv`
- Examine the structure of the dataset and handle any missing values

### 2. Visualize Health Outcomes by Demographic Factors (30 points)
- Create a boxplot showing the distribution of BMI across different age groups
- Create a bar chart showing vaccination rates by education level
- Add appropriate titles, labels, and color schemes to both visualizations

### 3. Create a Geographic Visualization (30 points)
- Create a choropleth map showing health insurance coverage rates by region
- Include a color legend and appropriate title
- Add annotations for regions with notably high or low coverage

### 4. Time-Series Analysis (20 points)
- Using the `health_timeseries_data.csv` file, create a line graph showing trends in health metrics over time
- Add a smoothed trend line to highlight the general pattern
- Format the x-axis to clearly show time intervals

### 5. Documentation and Interpretation (10 points)
- For each visualization, write a 2-3 sentence interpretation describing what the visualization reveals about public health
- Ensure your code is well-commented and follows good R coding practices

## Submission Instructions
1. Complete all tasks in the `public_health_visualization.R` script
2. Save your visualizations as PNG files in the 'figures' folder
3. Commit and push all your changes to your GitHub repository
4. Ensure your final submission includes all required files

## Grading Criteria
- Correct implementation of visualizations (60%)
- Visual design and clarity (20%)
- Code organization and documentation (10%)
- Interpretation of results (10%)

## Resources
- R for Data Science: https://r4ds.had.co.nz/
- ggplot2 documentation: https://ggplot2.tidyverse.org/
- CDC Open Data: https://data.cdc.gov/
