Here is the description of the data set produced by script 'run_analysis.R', which uses original data set from the experiment 'Human Activity Recognition Using Smartphones Dataset'. For more details see the link:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The original data is processed in a following way:

The script merges the training and the test data sets into single one, names variables and labels data appropriately, extracts only the measurements on the mean and standard deviation for each measurement, and finally calculates tidy data set with the average of each variable for each activity and each subject.

All the variables are normalized and bounded within [-1,1] which affects their original measurement units.

Note the data set contains averages of each variable for each activity and each experiment subject.

List of variable names in the data set:

"subject" - number of person in a group of 30 volunteers participated in the experiment
"activity" - activity type

Prefix 't' in variables below used to denote time.

"tBodyAcc-mean()-X" - see below
"tBodyAcc-mean()-Y" - see below
"tBodyAcc-mean()-Z" - averaged mean value of body acceleration signals in the X, Y and Z directions
"tBodyAcc-std()-X" - see below
"tBodyAcc-std()-Y" - see below
"tBodyAcc-std()-Z" - averaged standard deviation of body acceleration signals in the X, Y and Z directions
"tGravityAcc-mean()-X" - see below
"tGravityAcc-mean()-Y" - see below
"tGravityAcc-mean()-Z" - averaged mean value of gravity acceleration signals in the X, Y and Z directions
"tGravityAcc-std()-X" - see below
"tGravityAcc-std()-Y" - see below
"tGravityAcc-std()-Z" - averaged standard deviation of gravity acceleration signals in the X, Y and Z directions
"tBodyAccJerk-mean()-X" - see below
"tBodyAccJerk-mean()-Y" - see below
"tBodyAccJerk-mean()-Z" - averaged mean value of body acceleration Jerk signals in the X, Y and Z directions
"tBodyAccJerk-std()-X" - see below
"tBodyAccJerk-std()-Y" - see below
"tBodyAccJerk-std()-Z" - averaged standard deviation of body acceleration Jerk signals in the X, Y and Z directions
"tBodyGyro-mean()-X" - see below
"tBodyGyro-mean()-Y" - see below
"tBodyGyro-mean()-Z" - averaged mean value of angular velocity signals in the X, Y and Z directions
"tBodyGyro-std()-X" - see below
"tBodyGyro-std()-Y" - see below
"tBodyGyro-std()-Z" - averaged standard deviation of angular velocity signals in the X, Y and Z directions
"tBodyGyroJerk-mean()-X" - see below
"tBodyGyroJerk-mean()-Y" - see below
"tBodyGyroJerk-mean()-Z" - averaged mean value of angular velocity Jerk signals in the X, Y and Z directions
"tBodyGyroJerk-std()-X" - see below
"tBodyGyroJerk-std()-Y" - see below
"tBodyGyroJerk-std()-Z" - averaged standard deviation of angular velocity Jerk signals in the X, Y and Z directions
"tBodyAccMag-mean()" - averaged mean value of body acceleration magnitude signals
"tBodyAccMag-std()" - averaged standard deviation of body acceleration magnitude signals
"tGravityAccMag-mean()" - averaged mean value of gravity acceleration magnitude signals
"tGravityAccMag-std()" - averaged standard deviation of gravity acceleration magnitude signals
"tBodyAccJerkMag-mean()" - averaged mean value of body acceleration magnitude Jerk signals
"tBodyAccJerkMag-std()" - averaged standard deviation of body acceleration magnitude Jerk signals
"tBodyGyroMag-mean()" - averaged mean value of angular velocity magnitude signals
"tBodyGyroMag-std()" - averaged standard deviation of angular velocity magnitude signals
"tBodyGyroJerkMag-mean()" - averaged mean value of angular velocity magnitude Jerk signals
"tBodyGyroJerkMag-std()" - averaged standard deviation of angular velocity magnitude Jerk signals

Prefix 'f' below used to indicate frequency domain signals. The meaning of variables is the same as ones with prefix 't' above except that meanFreq() stands for averaged weighted mean of the frequency components to obtain a mean frequency.
 
"fBodyAcc-mean()-X"
"fBodyAcc-mean()-Y"
"fBodyAcc-mean()-Z"
"fBodyAcc-std()-X"
"fBodyAcc-std()-Y"
"fBodyAcc-std()-Z"
"fBodyAcc-meanFreq()-X"
"fBodyAcc-meanFreq()-Y"
"fBodyAcc-meanFreq()-Z"
"fBodyAccJerk-mean()-X"
"fBodyAccJerk-mean()-Y"
"fBodyAccJerk-mean()-Z"
"fBodyAccJerk-std()-X"
"fBodyAccJerk-std()-Y"
"fBodyAccJerk-std()-Z"
"fBodyAccJerk-meanFreq()-X"
"fBodyAccJerk-meanFreq()-Y"
"fBodyAccJerk-meanFreq()-Z"
"fBodyGyro-mean()-X"
"fBodyGyro-mean()-Y"
"fBodyGyro-mean()-Z"
"fBodyGyro-std()-X"
"fBodyGyro-std()-Y"
"fBodyGyro-std()-Z"
"fBodyGyro-meanFreq()-X"
"fBodyGyro-meanFreq()-Y"
"fBodyGyro-meanFreq()-Z"
"fBodyAccMag-mean()"
"fBodyAccMag-std()"
"fBodyAccMag-meanFreq()"
"fBodyBodyAccJerkMag-mean()"
"fBodyBodyAccJerkMag-std()"
"fBodyBodyAccJerkMag-meanFreq()"
"fBodyBodyGyroMag-mean()"
"fBodyBodyGyroMag-std()"
"fBodyBodyGyroMag-meanFreq()"
"fBodyBodyGyroJerkMag-mean()"
"fBodyBodyGyroJerkMag-std()"
"fBodyBodyGyroJerkMag-meanFreq()"