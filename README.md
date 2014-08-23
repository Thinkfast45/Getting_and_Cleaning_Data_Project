Getting_and_Cleaning_Data_Project
=================================
The script run_analysis.R creates a data set from the "Human Activity Recognition Using Smartphones Data Set" found in the UCI Machine Learning Repository.  The download file named "UCI HAR Dataset" can be found at

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip


The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The script run_analysis is designed to run on an already downloaded "UCI HAR Dataset" file that has been set as the working directory.  The script combines the training and test data into one large dataframe and then returns the mean of the mean and standard deviation for each test parameter for each subject and activity.  It then creates a text file in a local git repository.

Objects in this repository:

- README.md
- run_analysis.R
- Activity_Summary.txt
- CodeBook.md
