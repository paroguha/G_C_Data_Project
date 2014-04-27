The purpose of this project is to clean the given data set and to prepare a tidy data set with the mean and standard deviation for each measurement.

1) A tidy data set has been created and submitted.
2) My Github repository named Project_G_C_data has been created.
3) The repository contains the R script "run_analysis.R" for performing the analysis.
4) The repository contains a code book describing the variables, the data, and the transformations performed to clean up the data and is called CodeBook.md. 

5) The zipped data for the project is at: 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

6) Unzip/Extract the data into a folder on your local drive like 
(C:\Users\paro\Desktop\coursera\Getting&CleaningData\UCI HAR Dataset).

7) In the same folder save the R script (run_analysis.R) in (C:\Users\paro\Desktop\coursera\Getting&CleaningData\UCI HAR Dataset). 

8) In RStudio or R set the working directory: setwd("C:\\Users\\paro\\Desktop\\coursera\\Getting&CleaningData\\UCI HAR Dataset\\")

9) In Rstudio open the file ("run_analysis.R") and run it.

10) in approx. 30 secs to a minute the R script creates a tidy dataset by running the following operations:
 
	(a) Merges the training and the test sets to create one data set.
	(b) Extracts only the measurements on the mean and standard deviation for each measurement. 
	(c) Uses descriptive activity names to name the activities in the data set
	(d) Creates a tidy_data set with the average of each variable for each activity and each subject. 
	(e) It creates a table with 180 observations of 68 variables. 			
	(f) 30 subjects * 6 activities = 180 rows.
	(g) To make it readable in Rstudio I used command head(tidy_data) to read the first few rows 
	or observations of the 68 variables. 