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

tidy data set comprising 180 observations of 66 feature variables, the values of which are the averages for each activity and each subject on the mean and standard devivations of feature measurements, plus there are 2 additional columns: for the subject ID and the activity name
Hence: a data frame with 180 observations of 68 variables (dimensions: 180 rows, 68 columns)

- Each row identifies the subject who performed the activity, gives the name of the activity and the value of 66 feature variables. As required in Hadley Wickham's Tidy Data paper( http://vita.had.co.nz/papers/tidy-data.pdf), every row contains a unique observation.

- Every one of the subjects performed every activity. That is, for every subject there are 6 rows (one for every activity) and the corresponding values of the feature variables.

- the first column named 'subjectID' comprises subject identification numbers ranging from 1 to 30. It is coded as class integer.

- the second column named 'activityName' comprises the names of the activity performed by the subject at the given moment the observations were made. It is of class "character". 
'activityName' can take the values: "LAYING", "SITTING" "STANDING", "WALKING", "WALKING_DOWNSTAIRS", "WALKING_UPSTAIRS".  As the names suggest the subject is observed in different states. That is laying down, sitting, walking on a horizontally, or walking down or up stairs.

- the other 66 columns have the names

 [1] "subjectID"             "activityName"          "tBodyAccmean_X"        "tBodyAccmean_Y"        "tBodyAccmean_Z"       
 [6] "tBodyAccstd_X"         "tBodyAccstd_Y"         "tBodyAccstd_Z"         "tGravityAccmean_X"     "tGravityAccmean_Y"    
[11] "tGravityAccmean_Z"     "tGravityAccstd_X"      "tGravityAccstd_Y"      "tGravityAccstd_Z"      "tBodyAccJerkmean_X"   
[16] "tBodyAccJerkmean_Y"    "tBodyAccJerkmean_Z"    "tBodyAccJerkstd_X"     "tBodyAccJerkstd_Y"     "tBodyAccJerkstd_Z"    
[21] "tBodyGyromean_X"       "tBodyGyromean_Y"       "tBodyGyromean_Z"       "tBodyGyrostd_X"        "tBodyGyrostd_Y"       
[26] "tBodyGyrostd_Z"        "tBodyGyroJerkmean_X"   "tBodyGyroJerkmean_Y"   "tBodyGyroJerkmean_Z"   "tBodyGyroJerkstd_X"   
[31] "tBodyGyroJerkstd_Y"    "tBodyGyroJerkstd_Z"    "tBodyAccMagmean_"      "tBodyAccMagstd_"       "tGravityAccMagmean_"  
[36] "tGravityAccMagstd_"    "tBodyAccJerkMagmean_"  "tBodyAccJerkMagstd_"   "tBodyGyroMagmean_"     "tBodyGyroMagstd_"     
[41] "tBodyGyroJerkMagmean_" "tBodyGyroJerkMagstd_"  "fBodyAccmean_X"        "fBodyAccmean_Y"        "fBodyAccmean_Z"       
[46] "fBodyAccstd_X"         "fBodyAccstd_Y"         "fBodyAccstd_Z"         "fBodyAccJerkmean_X"    "fBodyAccJerkmean_Y"   
[51] "fBodyAccJerkmean_Z"    "fBodyAccJerkstd_X"     "fBodyAccJerkstd_Y"     "fBodyAccJerkstd_Z"     "fBodyGyromean_X"      
[56] "fBodyGyromean_Y"       "fBodyGyromean_Z"       "fBodyGyrostd_X"        "fBodyGyrostd_Y"        "fBodyGyrostd_Z"       
[61] "fBodyAccMagmean_"      "fBodyAccMagstd_"       "fBodyAccJerkMagmean_"  "fBodyAccJerkMagstd_"   "fBodyGyroMagmean_"    
[66] "fBodyGyroMagstd_"      "fBodyGyroJerkMagmean_" "fBodyGyroJerkMagstd_" 
 
 The values in these columns are of class: "numeric" and bounded within [-1,1]. 

 The variables in the columns are derived from feature variables coming from the accelerometer and gyroscope 3-axial raw signals. More information on this can be found in the descriptive files 'features_info.txt', 'README.txt' and 'features.txt' of the raw data. 
 the names decode as follows:
 prefix 't' : denotes time domain signal
 prefix 'f' : denotes frequency domain signal
 Acc : signal from accelerometer
 Gyro: signal from gyrometer
 Body: body part of acceleration signal
 Gravity: gravity part of acceleration signal
 mean: mean 
 std: standard deviation
 Jerk: jerk signal
 Mag: Magnitude of the signal
 X,Y,Z: denotes the axis the signal was mesured on
 
With this information I consider the names descriptive and human readable enough to comply with the requirements for tidy data.
 

- 'reducedDataSet.txt': tidy data set comprising 10299 observations of 66 variables on mean and standard devivations of sensor mearsurements. There are 3 additional columns: for the subject ID, activity label, and the activity name

- 'summarizedReducedDT.txt': tidy data set comprising 180 observations of 66 variables  with the average for each activity and each subject on the mean and standard devivations of mearsurements. There are 2 additional columns: for the subject ID and the activity name



Description of what the script 'run_analysis.R'does:
======================================================
- Loads the raw data into the workspace as dataframes 'testData' and 'trainData'

- Training and the test sets are merged to create one data set 'mergedData'

- Columns containing the SubjectID and a lablel for the activity performed are added to the dataset

- The dataset is reduced to create "reducedDataSet": All feature variables except the columns for variables pertaining to a mean and standard deviation for each measurementare eliminated, the columns for "subjectID"", "activityLabels"" and "activityName"" stay

- The activity labels in the "activityLabels column are matched to Descriptive activity names (the ones contained in the original file "activity_labels.txt") are matched to the activityLabels and a column is added to "reducedDataSet"

- Descriptive variable names (derived from the original file "features.txt") are introduced to name the feature variable columns of 'reducedDataSet'. The names are modified to eliminate "()" and "-" as they can cause problems when handling the data frame

- "reducedDataSet.txt" is saved to disc

- A second, independent tidy data set named 'summarizedReducedDT' with the average of each variable for each activity and each subject is created  

- "summarizedReducedDT.txt" is saved to disc

