Original Data Source: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip . 


Data Abstract: Human Activity Recognition database built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.

Data Set Characteristics:  Multivariate, Time-Series

Number of Instances: 10299

Area: Computer

Attribute Characteristics: N/A

Number of Attributes: 561

Date Donated: 2012-12-10

Source: Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto. 
Smartlab - Non Linear Complex Systems Laboratory 
DITEN - Universit√  degli Studi di Genova, Genoa I-16145, Italy. 
activityrecognition '@' smartlab.ws 
www.smartlab.ws 



Data Set Information: The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 


Attribute Information:

For each record in the dataset it is provided: 
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. 
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.


The attached R script (run_analysis.R) performs the following to clean up the data:

1. Merges the training and test sets to create one data set, namely
(a) train/X_train.txt with test/X_test.txt. -- the result is a 10299 x 561 data frame.

(b) train/subject_train.txt with test/subject_test.txt -- the result is a 10299 x 1 data frame with subject IDs.

(c) train/y_train.txt with test/y_test.txt -- the result is also a 10299 x 1 data frame with activity IDs.

2. Reads file features.txt and extracts only the measurements on the mean and standard deviation for each measurement as needed by the project. The result is a 10299 x 66 data frame.

3. Reads activity_labels.txt and applies descriptive activity names to name the activities in the data set: 
walking, walkingupstairs, walkingdownstairs, sitting, standing and laying.

4. The R script also labels the data set with descriptive names. The result is saved as merged_clean_data.txt, a 10299x68 data frame such that the first column contains subject IDs, the second column activity names, and the last 66 columns are measurements. Subject IDs are integers.

Names of the attributes are similar to the following:
tbodyacc-mean-x, tbodyacc-mean-y, tbodyacc-mean-z, tbodyacc-std-x, tbodyacc-std-y, tbodyacc-std-z, tgravityacc-mean-x, tgravityacc-mean-y

5. Next the script creates a tidy data set with the average of each measurement for each activity and each subject. The result is saved as data_set_with_the_averages.txt with the first column containing subject IDs, the second column contains activity names, and then the averages for each of the 66 attributes. There are 30 subjects and 6 activities which creates 180 rows in this data set with averages.