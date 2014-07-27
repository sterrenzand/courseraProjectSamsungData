Code Book
========================================================
This code book describes the variables, the data, and any transformations or work that was performed to clean up the data 
The output and result of the 'run_analysis.R' script is a dataframe named 'summarizedReducedDT* which was saved to disc as 'summarizedReducedDT.txt'

==================================================================


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

- for more information on the raw data (e.g.variables, their meaning and how they were derived) please consult the original files "features_info.txt"" and "README.txt"  in the "UCI HAR Dataset " folder.




==================================================================================
The tidy data set "summarizedReducedDT" as returned by the script "run_analysis.R"
==================================================================================

'summarizedReducedDT': 

- a data frame with 180 observations of 68 variables (dimensions: 180 rows, 68 columns)

- Each row identifies the subject who performed the activity, gives the name of the activity and the value of 66 feature variables. As required in Hadley Wickham's Tidy Data paper( http://vita.had.co.nz/papers/tidy-data.pdf), every row contains a unique observation.

- Every one of the subjects performed every activity. That is, for every subject there are 6 rows (one for every activity) and the corresponding values of the feature variables.

- the first column named 'subjectID' comprises subject identification numbers ranging from 1 to 30. It is coded as class integer.

- the second column named 'activityName' comprises the names of the activity performed by the subject at the given moment the observations were made. It is of class "character". 
'activityName' can take the values: "LAYING", "SITTING" "STANDING", "WALKING", "WALKING_DOWNSTAIRS", "WALKING_UPSTAIRS".  As the names suggest the subject is observed in different states. That is laying down, sitting, walking on a horizontally, or walking down or up stairs.

- the other 66 columns have the names

 [1] "tBodyAcc-mean()-X"       "tBodyAcc-mean()-Y"       "tBodyAcc-mean()-Z"       "tBodyAcc-std()-X"       
 [5] "tBodyAcc-std()-Y"        "tBodyAcc-std()-Z"        "tGravityAcc-mean()-X"    "tGravityAcc-mean()-Y"   
 [9] "tGravityAcc-mean()-Z"    "tGravityAcc-std()-X"     "tGravityAcc-std()-Y"     "tGravityAcc-std()-Z"    
[13] "tBodyAccJerk-mean()-X"   "tBodyAccJerk-mean()-Y"   "tBodyAccJerk-mean()-Z"   "tBodyAccJerk-std()-X"   
[17] "tBodyAccJerk-std()-Y"    "tBodyAccJerk-std()-Z"    "tBodyGyro-mean()-X"      "tBodyGyro-mean()-Y"     
[21] "tBodyGyro-mean()-Z"      "tBodyGyro-std()-X"       "tBodyGyro-std()-Y"       "tBodyGyro-std()-Z"      
[25] "tBodyGyroJerk-mean()-X"  "tBodyGyroJerk-mean()-Y"  "tBodyGyroJerk-mean()-Z"  "tBodyGyroJerk-std()-X"  
[29] "tBodyGyroJerk-std()-Y"   "tBodyGyroJerk-std()-Z"   "tBodyAccMag-mean()"      "tBodyAccMag-std()"      
[33] "tGravityAccMag-mean()"   "tGravityAccMag-std()"    "tBodyAccJerkMag-mean()"  "tBodyAccJerkMag-std()"  
[37] "tBodyGyroMag-mean()"     "tBodyGyroMag-std()"      "tBodyGyroJerkMag-mean()" "tBodyGyroJerkMag-std()" 
[41] "fBodyAcc-mean()-X"       "fBodyAcc-mean()-Y"       "fBodyAcc-mean()-Z"       "fBodyAcc-std()-X"       
[45] "fBodyAcc-std()-Y"        "fBodyAcc-std()-Z"        "fBodyAccJerk-mean()-X"   "fBodyAccJerk-mean()-Y"  
[49] "fBodyAccJerk-mean()-Z"   "fBodyAccJerk-std()-X"    "fBodyAccJerk-std()-Y"    "fBodyAccJerk-std()-Z"   
[53] "fBodyGyro-mean()-X"      "fBodyGyro-mean()-Y"      "fBodyGyro-mean()-Z"      "fBodyGyro-std()-X"      
[57] "fBodyGyro-std()-Y"       "fBodyGyro-std()-Z"       "fBodyAccMag-mean()"      "fBodyAccMag-std()"      
[61] "fBodyAccJerkMag-mean()"  "fBodyAccJerkMag-std()"   "fBodyGyroMag-mean()"     "fBodyGyroMag-std()"     
[65] "fBodyGyroJerkMag-mean()" "fBodyGyroJerkMag-std()" 





 





The dataset includes the following files:
=========================================

- 'README.md'

- 'CodeBook.md': describes the variables, the data, and any transformations or work that was performed to clean up the                                                                                  data 

- 'run_analysis.R': R script that cleans the raw data and outputs the cleaned tidy data sets "reducedDataSet.txt and "summarizedReducedDT.txt"

- 'reducedDataSet.txt': tidy data set comprising 10299 observations of 66 variables on mean and standard devivations of sensor mearsurements. There are 3 additional columns: for the subject ID, activity label, and the activity name

- 'summarizedReducedDT.txt': tidy data set comprising 180 observations of 66 variables  with the average for each activity and each subject on the mean and standard devivations of mearsurements. There are 2 additional columns: for the subject ID and the activity name








The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:
======================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

The dataset includes the following files:
=========================================

- 'README.md'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

Notes: 
======
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

For more information about this dataset contact: activityrecognition@smartlab.ws

License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012



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

This is an R Markdown document. Markdown is a simple formatting syntax for authoring web pages (click the **Help** toolbar button for more details on using R Markdown).

When you click the **Knit HTML** button a web page will be generated that includes both content as well as the output of any embedded R code chunks within the document. You can embed an R code chunk like this:

```{r}
summary(cars)
```

You can also embed plots, for example:

```{r fig.width=7, fig.height=6}
plot(cars)
```

