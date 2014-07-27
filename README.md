README
========================================================


The dataset includes the following files:
=========================================

- 'README.md'

- 'CodeBook.md': describes the variables, the data, and any transformations or work that was performed to clean up the                                                                                  data 

- 'run_analysis.R': R script that cleans the raw data and outputs the cleaned tidy data sets "reducedDataSet.txt and "summarizedReducedDT.txt"

- 'reducedDataSet.txt': tidy data set comprising 10299 observations of 66 variables on mean and standard devivations of sensor mearsurements. There are 3 additional columns: for the subject ID, activity label, and the activity name

- 'summarizedReducedDT.txt': tidy data set comprising 180 observations of 66 variables  with the average for each activity and each subject on the mean and standard devivations of mearsurements. There are 2 additional columns: for the subject ID and the activity name



Instructions on how to use the 'run_analysis.R' script:
=======================================================
- The raw data the R-script 'run_analysis.R' works with can be downloaded from 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

- unzip the file getdata_projectfiles_UCI HAR Dataset.zip into your working directory ('run_analysis.R' uses relative file paths)

-For more information on the data, the variables and the steps performed by 'run_analysis.R' please refer to 'CodeBook.md'



General description of the raw data and it's source:
=====================================================

_ The raw data was downloaded on 7/24/2014 from: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

- A full description is available at: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

- The data has its origin in the Human Activity Recognition Using Smartphones Dataset
Version 1.0 by
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws


- The raw data is the result of experiments  carried out with a group of 30 volunteers each performing six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) while wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, 3-axial linear acceleration and 3-axial angular velocity were captured. Additional variables in time and frequency domain were devrived from the signals. The dataset has been randomly partitioned into two sets (training 70%, test 30%).

Description of what the script 'run_analysis.R'does:
======================================================
- Loads the raw data into the workspace

- Training and the test sets are merged to create one data set.

- Columns containing the SubjectID and a lablel for the activity performed are added to the dataset

- The dataset is reduced to create "reducedDataSet": All feature variables except the columns for variables pertaining to a mean and standard deviation for each measurementare eliminated, the columns for "subjectID"", "activityLabels"" and "activityName"" stay

- The activity labels in the "activityLabels column are matched to Descriptive activity names (the ones contained in the original file "activity_labels.txt") are matched to the activityLabels and a column is added to "reducedDataSet"

- Descriptive variable names (taken from the original file "features.txt") are introduced to name the feature variable columns of 'reducedDataSet'

- "reducedDataSet.txt" is saved to disc

- A second, independent tidy data set named 'summarizedReducedDT' with the average of each variable for each activity and each subject is created  

- "summarizedReducedDT.txt" is saved to disc
