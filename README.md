# getting-and-cleaning-data
This repo contains all scripts/files needed for the coursera getting and cleaning data course project:
- run_analysis.R: The R code to create the tidy data sets asked for in the instructions
- CodeBook.md: A description of all variables, data and data transformations performed
- README.md: This readme, which explains how run_analysis.R works and which files are present

In the script run_analysis.R, the following steps were performed:
- 1: Read in all files needed to create the new dataset
- 2: Merge the training and testing sets with the corresponding y values and subject IDs and combine both sets into one data set
- 3: Extracts only the measurements on the mean and standard deviation for each measurement 
- 4: Uses descriptive activity names to name the activities in the data set
- 5: Label the data sets with descriptive variable names
- 6: From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject
- 7: Write the data set into a file called "tidy_data.txt"
    




