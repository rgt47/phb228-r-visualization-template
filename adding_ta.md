# Adding a TA to Your GitHub Classroom

This guide provides detailed instructions for adding a Teaching Assistant (TA) to your GitHub Classroom who will help grade student assignments.

## Prerequisites
- You have administrator access to your GitHub Classroom
- You know the GitHub username of your TA
- Your TA has a GitHub account

## Step 1: Access Your GitHub Classroom

1. Go to [GitHub Classroom](https://classroom.github.com/)
2. Sign in with your GitHub account
3. Select your classroom (PHB228 Spring 2025 Classroom)
   - The URL should be: https://classroom.github.com/classrooms/204891565-phb228-spring2025-classroom-afbf2f

## Step 2: Add Your TA as a Teaching Assistant

1. In your classroom dashboard, click on the "Settings" tab at the top
2. Scroll down to the "Classroom Roster" section
3. In the "Add Teachers" field, enter your TA's GitHub username
4. From the dropdown next to their name, select "Teaching Assistant" (not "Administrator")
5. Click "Add" to add them to your classroom with TA privileges

## Step 3: Verify TA Access

1. After adding the TA, they should appear in the "Classroom Roster" section
2. Confirm that they are listed with the role "Teaching Assistant"
3. The TA should receive an email notification that they've been added to the classroom

## Step 4: Explain TA Responsibilities and Access

Inform your TA about their access level and responsibilities:

1. **What TAs can do:**
   - View all student repositories for assignments
   - Leave comments and feedback on student code
   - Grade assignments and provide feedback
   - Download student submissions
   - View the assignment roster and submission status

2. **What TAs cannot do:**
   - Create or modify assignments
   - Add or remove students or other teachers
   - Change classroom settings

## Step 5: Train Your TA on GitHub Classroom Grading

1. **Accessing Student Work:**
   - Go to the assignment page in GitHub Classroom
   - View the roster of students who accepted the assignment
   - Click on any student's repository to view their work

2. **Providing Feedback:**
   - Add line-specific comments by clicking the "+" icon that appears when hovering over code lines in GitHub
   - Create a Pull Request to provide overall feedback:
     - Go to the "Pull requests" tab in the student's repository
     - Click "New pull request"
     - Select "Feedback" as the base branch and "main" as the compare branch
     - Add comments in the pull request description
     - Submit the pull request

3. **Using the Grading Interface:**
   - For assignments with auto-grading:
     - The TA can see auto-grading results on the assignment page
     - They can manually override grades if needed
   - For manual grading:
     - The TA can enter grades through the assignment's "Grade" interface
     - They can download all submissions at once for offline grading

## Step 6: Establish Grading Workflow and Timeline

1. Create a grading schedule with deadlines for the TA
2. Establish a grading rubric for each assignment
3. Determine how feedback should be structured:
   - Technical accuracy (60%)
   - Code organization and documentation (20%)
   - Visualization quality and interpretation (20%)
4. Decide on a format for communicating grades to students:
   - GitHub issue comments
   - Pull request reviews
   - Separate feedback document

## Step 7: Monitoring TA Progress

1. As the classroom administrator, you can see all feedback provided by TAs
2. Periodically review a sample of graded assignments to ensure consistency
3. Schedule regular check-ins with your TA to address any questions or challenges

## Troubleshooting

If your TA reports access issues:

1. Ensure they are logging in with the correct GitHub account
2. Verify their GitHub username was entered correctly
3. Try removing and re-adding them to the classroom
4. Check if they need to accept an invitation to join the classroom

## Additional Resources

1. GitHub Classroom documentation for TAs: https://docs.github.com/en/education/manage-coursework-with-github-classroom/teach-with-github-classroom/use-autograding
2. Effective feedback strategies: https://docs.github.com/en/education/manage-coursework-with-github-classroom/teach-with-github-classroom/leave-feedback-with-pull-requests
