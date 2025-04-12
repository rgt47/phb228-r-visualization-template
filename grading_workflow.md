# GitHub Classroom Grading Workflow for TAs

This guide outlines the step-by-step process for grading assignments in GitHub Classroom.

## Accessing the Assignment

1. Log in to [GitHub Classroom](https://classroom.github.com)
2. Select the PHB228 classroom
3. Click on the assignment you need to grade (e.g., "R Data Visualization Assignment")
4. You'll see a roster of all students and their submission status

## Reviewing Student Work

### Method 1: Individual Repository Review
1. Click on a student's repository from the roster
2. Review their code in the main branch
3. Check the figures folder to see visualizations
4. Examine their R script for code quality and comments

### Method 2: Bulk Download (for multiple submissions)
1. On the assignment page, click "Download repositories" 
2. This downloads a ZIP file with all student repositories
3. Extract the ZIP to review assignments locally in RStudio

## Providing Feedback

### Line-Specific Code Comments
1. When viewing a file in the student's repository, hover over any line
2. Click the "+" icon that appears on the left
3. Type your feedback and click "Add single comment"
4. The student will be notified about your comment

### Overall Feedback via Pull Request
1. In the student's repository, go to "Pull requests" tab
2. Click "New pull request"
3. Base: select "Feedback" branch, Compare: select "main" branch
4. Click "Create pull request"
5. Title it "Assignment Feedback"
6. In the description, provide overall feedback using this structure:
   ```
   ## Overall Assessment
   [General comments about the submission]

   ## Strengths
   - [Highlight positive aspects]
   - [Mention well-implemented features]

   ## Areas for Improvement
   - [Constructive suggestions]
   - [Code improvements]

   ## Grade
   - Task 1 (Setup): [X/10]
   - Task 2 (Demographic Visualizations): [X/30]
   - Task 3 (Geographic Visualization): [X/30]
   - Task 4 (Time-Series Analysis): [X/20]
   - Task 5 (Documentation): [X/10]
   
   Total: [X/100]
   ```
7. Click "Create pull request"

## Grading Tips

### For the R Visualization Assignment

**Task 1: Setup (10 points)**
- ✅ All packages loaded properly
- ✅ Data loaded correctly
- ✅ Missing values appropriately handled

**Task 2: Demographic Visualizations (30 points)**
- ✅ Boxplot shows clear BMI distribution across age groups
- ✅ Bar chart correctly displays vaccination rates
- ✅ Proper titles, labels, and color schemes
- ✅ Code is efficient and well-structured

**Task 3: Geographic Visualization (30 points)**
- ✅ Choropleth map correctly displays insurance coverage
- ✅ Color legend is informative and clear
- ✅ Annotations highlight notable regions
- ✅ Map is properly formatted and readable

**Task 4: Time-Series Analysis (20 points)**
- ✅ Line graph shows clear trends over time
- ✅ Smoothed trend line added appropriately
- ✅ X-axis formatted clearly
- ✅ Multiple regions distinguished effectively

**Task 5: Documentation (10 points)**
- ✅ Each visualization has a 2-3 sentence interpretation
- ✅ Interpretations are insightful and accurate
- ✅ Code is well-commented
- ✅ Overall organization follows good practices

## Common Issues to Flag

- Missing visualizations in the figures folder
- Incomplete tasks or sections
- Poor color choices that make visualizations hard to read
- Missing axis labels or legends
- Incorrect data manipulation
- Code errors or inefficient code
- Superficial or incorrect interpretations
- Poor code formatting or lack of comments

## Submitting Grades

After providing feedback via pull request:

1. Return to the assignment page in GitHub Classroom
2. Find the student in the roster
3. Enter their grade in the grade column
4. Click "Save" to record the grade

## Questions or Issues?

If you encounter any problems or have questions about grading:
- Contact the course instructor (Prof. [Your Name])
- Email: [your.email@university.edu]
- Office hours: [Days/Times]
