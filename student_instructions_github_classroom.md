# Step-by-Step Instructions for GitHub Classroom Assignment

## Getting Started with Your R Data Visualization Assignment

### Step 1: Accept the Assignment
1. Click on the assignment link your instructor shared with you
2. You may be asked to sign in to GitHub if you aren't already
3. If you don't have a GitHub account, click "Create an account" and follow the instructions
4. Once signed in, click the "Accept this assignment" button
5. Wait while GitHub sets up your repository (this might take a minute)

### Step 2: Find Your Repository
1. After your repository is created, you'll see a page with a link to your new repository
2. Click on the link to go to your repository
3. This is your personal copy of the assignment where you'll do your work

### Step 3: Install Required Software (if you haven't already)
1. Download and install R from https://cran.r-project.org/
2. Download and install RStudio from https://posit.co/download/rstudio-desktop/
3. Install Git from https://git-scm.com/downloads
   - During installation, accept the default options

### Step 4: Clone the Repository to Your Computer
1. Open RStudio
2. Click on "File" → "New Project"
3. Select "Version Control" → "Git"
4. In the "Repository URL" field, paste the URL of your repository
   - To find this URL: On your GitHub repository page, click the green "Code" button and copy the HTTPS URL
5. The "Project directory name" will fill in automatically
6. Choose where to save the project on your computer in the "Create project as subdirectory of:" field
7. Click "Create Project"

### Step 5: Explore the Assignment Files
1. In RStudio, look at the "Files" tab in the bottom-right panel
2. Open and read `README.md` and `assignment_instructions.md` to understand the assignment
3. Open `public_health_visualization.R` - this is where you'll write your code

### Step 6: Set Up Your R Environment
1. In RStudio, open the `public_health_visualization.R` file
2. Run the first few lines to install and load required packages:
   - Select the lines with the `library()` commands
   - Click the "Run" button or press Ctrl+Enter (Cmd+Enter on Mac)
3. If you get errors about missing packages, install them first:
   ```r
   install.packages(c("ggplot2", "dplyr", "tidyr", "maps"))
   ```

### Step 7: Complete the Assignment
1. Follow the instructions in the R script and the assignment instructions
2. Write your code in the appropriate sections of `public_health_visualization.R`
3. Run your code frequently to test it
4. Save your visualizations to the `figures/` folder as instructed in the script

### Step 8: Save Your Work
1. After making progress, save your file (Ctrl+S or Cmd+S)
2. To save your work to GitHub:
   - In RStudio, click the "Git" tab in the top-right panel
   - Check the boxes next to the files you've changed
   - Click "Commit"
   - Write a brief message describing your changes (e.g., "Completed Task 1 and 2")
   - Click "Commit"
   - Click "Push" to send your changes to GitHub
3. Repeat this process frequently as you work to back up your progress

### Step 9: Check Your Repository on GitHub
1. Go back to your GitHub repository in your web browser
2. Refresh the page to see your updated files
3. Make sure your files, including the visualizations in the `figures/` folder, appear correctly

### Step 10: Submit Your Assignment
1. Make a final commit and push when you've completed the assignment
2. Verify that all your work appears correctly on GitHub:
   - Your completed R script
   - All required visualizations in the `figures/` folder
   - Any other required files
3. Your instructor will automatically have access to your submission through GitHub Classroom

### Troubleshooting Tips
- If you have issues with Git commands in RStudio, you can also use GitHub Desktop (https://desktop.github.com/)
- If you're getting error messages, read them carefully. Often they tell you exactly what's wrong
- If a package won't install, make sure your R version is up to date
- If you're having trouble with GitHub, take screenshots of any error messages to share with your instructor

Remember, it's normal to encounter challenges when you're new to these tools. Don't hesitate to ask your instructor for help if you get stuck!
