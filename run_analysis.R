## read in the test data (2947 observations of 561 variables)
testData<-read.table("getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/X_test.txt",row.names=NULL)

## read in the training data (7352 observations of 561 variables)
trainData<-read.table("getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/X_train.txt",row.names=NULL)

#Merges the training and the test sets to create one data set.
mergedData<-rbind(testData,trainData)


#add a column named "SubjectID" to the data frame mergedData 
#first read in the subjectID data for the test and training set then combine them to one vector, 
#which is added to the merged data set
testSubjectID<-read.table("getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/subject_test.txt")
trainSubjectID<-read.table("getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/subject_train.txt")
subjectID<-c(testSubjectID$V1,trainSubjectID$V1)
mergedData$SubjectID<-subjectID

#add a column named "activityLabels" to the data frame mergedData 
#first read in the activity label data for the test and training set then combine them to one vector,
#which is added to the merged data set

testLabels<-read.table("getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/y_test.txt")
trainLabels<-read.table("getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/y_train.txt")
activityLabels<-c(testLabels$V1,trainLabels$V1)
mergedData$activityLabels<-activityLabels


###Extracts only the measurements on the mean and standard deviation for each measurement. 
 #First loads the names of the features from features.txt
        featurenames<-read.table("getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/features.txt") 
 #coerces the the vector from class factor to class character
        names<-as.character(featurenames$V2) 
 #looks for feature names including the word "mean()" or "std()" indicating a mean or standard deviation measure
        columnamesIncludingMean<-grep( "mean\\(\\)",names, value=FALSE)
        columnamesIncludingStd<-grep("std\\(\\)",names, value=FALSE)
 #creates a reduced data set which is a subset of mergedData comprisng only the columns containing mean or 
 #standard deviation measurements and the subjectID and activityLabels columns
chosenColumns<-sort(c(columnamesIncludingMean,columnamesIncludingStd))
reducedDataSet<-subset(mergedData, select=c(chosenColumns,562,563) )

###Uses descriptive activity names to name the activities in the data set
 # a column named "activityName" is added to the dataset reducedDataSet
 # whereby the activity labels are mapped to the descriptive activity names as seen in "activity_labels.txt"
        activityNames<-read.table("getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/activity_labels.txt")
        for (i in 1:length(reducedDataSet$activityLabels))
                reducedDataSet$activityName[i]<-as.character(activityNames$V2[reducedDataSet$activityLabels[i]])

###Appropriately labels the data set with descriptive variable names.
 #as variable names for the columns of "reducedDataSet" the names for the features given in "features.txt" are used
 # in addition to this there are the three columns "subjectID", "activityLabels" and "activityName"

        colnames(reducedDataSet)[1:66]<-as.character(featurenames$V2[chosenColumns])

#there appears to have been an error in the orignal featurenames file and the for a couple of values the name includes a "body"
#too much e.g fBodyBodyAccJerkMag-mean()" should read fBodyAccJerkMag-mean() instead. This is fixed here

colnames(reducedDataSet)[61:66]<-c("fBodyAccJerkMag-mean()","fBodyAccJerkMag-std()","fBodyGyroMag-mean()","fBodyGyroMag-std()",     
                 "fBodyGyroJerkMag-mean()", "fBodyGyroJerkMag-std()")
#saves the reducedDataSet to file "reducedDataSet.txt"
write.table(reducedDataSet,file="reducedDataSet.txt",row.names=FALSE)
 

###Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
 #for each subject the means of the feature variables are calculated for every given activity 
 #for subject 1 the means of the feature variables for the activity "walking" (the results are put in one row of the 
 # summarizedReducedDT data set together with the subjectID and the activityName)

library(plyr)
summarizedReducedDT<-ddply(reducedDataSet, c("subjectID","activityName"), function(x) colMeans(x[c(colnames(reducedDataSet)[1:66])]))
write.table(summarizedReducedDT,file="summarizedReducedDT.txt",row.names=FALSE)
