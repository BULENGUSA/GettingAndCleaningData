#Project Code Book

##Source

Data URL: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

##Files

###Files included in "UCI HAR Dataset"
* activity_labels.txt
* features.txt
* features_info.txt
* subject_test.txt
* X_test.txt
* Y_test.txt
* subject_train.txt
* X_train.txt
* Y_train.txt
* README.txt

##Variables

###Activities
* WALKING
* WALKING_UPSTAIRS
* WALKING_DOWNSTAIRS
* SITTING
* STANDING
* LAYING

###Subjects
Labeled as numbers between 1 - 30.

###Features
The following features were found for each subject:

timeBodyAccelerometer-Mean()-X" "timeBodyAccelerometer-Mean()-Y" "timeBodyAccelerometer-Mean()-Z" 
"timeBodyAccelerometer-StDev()-X" "timeBodyAccelerometer-StDev()-Y" "timeBodyAccelerometer-StDev()-Z" 
"timeGravityAccelerometer-Mean()-X" "timeGravityAccelerometer-Mean()-Y" "timeGravityAccelerometer-Mean()-Z" 
"timeGravityAccelerometer-StDev()-X" "timeGravityAccelerometer-StDev()-Y" "timeGravityAccelerometer-StDev()-Z" 
"timeBodyAccelerometerJerk-Mean()-X" "timeBodyAccelerometerJerk-Mean()-Y" "timeBodyAccelerometerJerk-Mean()-Z" 
"timeBodyAccelerometerJerk-StDev()-X" "timeBodyAccelerometerJerk-StDev()-Y" "timeBodyAccelerometerJerk-StDev()-Z" 
"timeBodyGyroscope-Mean()-X" "timeBodyGyroscope-Mean()-Y" "timeBodyGyroscope-Mean()-Z" "timeBodyGyroscope-StDev()-X" 
"timeBodyGyroscope-StDev()-Y" "timeBodyGyroscope-StDev()-Z" "timeBodyGyroscopeJerk-Mean()-X" "timeBodyGyroscopeJerk-Mean()-Y" 
"timeBodyGyroscopeJerk-Mean()-Z" "timeBodyGyroscopeJerk-StDev()-X" "timeBodyGyroscopeJerk-StDev()-Y" 
"timeBodyGyroscopeJerk-StDev()-Z" "timeBodyAccelerometerMagnitude-Mean()" "timeBodyAccelerometerMagnitude-StDev()" 
"timeGravityAccelerometerMagnitude-Mean()" "timeGravityAccelerometerMagnitude-StDev()" 
"timeBodyAccelerometerJerkMagnitude-Mean()" "timeBodyAccelerometerJerkMagnitude-StDev()" "timeBodyGyroscopeMagnitude-Mean()" 
"timeBodyGyroscopeMagnitude-StDev()" "timeBodyGyroscopeJerkMagnitude-Mean()" "timeBodyGyroscopeJerkMagnitude-StDev()" 
"frequencyBodyAccelerometer-Mean()-X" "frequencyBodyAccelerometer-Mean()-Y" "frequencyBodyAccelerometer-Mean()-Z" 
"frequencyBodyAccelerometer-StDev()-X" "frequencyBodyAccelerometer-StDev()-Y" "frequencyBodyAccelerometer-StDev()-Z" 
"frequencyBodyAccelerometerJerk-Mean()-X" "frequencyBodyAccelerometerJerk-Mean()-Y" "frequencyBodyAccelerometerJerk-Mean()-Z" 
"frequencyBodyAccelerometerJerk-StDev()-X" "frequencyBodyAccelerometerJerk-StDev()-Y" 
"frequencyBodyAccelerometerJerk-StDev()-Z" "frequencyBodyGyroscope-Mean()-X" "frequencyBodyGyroscope-Mean()-Y" 
"frequencyBodyGyroscope-Mean()-Z" "frequencyBodyGyroscope-StDev()-X" "frequencyBodyGyroscope-StDev()-Y" 
"frequencyBodyGyroscope-StDev()-Z" "frequencyBodyAccelerometerMagnitude-Mean()" "frequencyBodyAccelerometerMagnitude-StDev()" 
"frequencyBodyAccelerometerJerkMagnitude-Mean()" "frequencyBodyAccelerometerJerkMagnitude-StDev()" 
"frequencyBodyGyroscopeMagnitude-Mean()" "frequencyBodyGyroscopeMagnitude-StDev()" "frequencyBodyGyroscopeJerkMagnitude-Mean()" 
"frequencyBodyGyroscopeJerkMagnitude-StDev()"

where, 

Mean = the mean of the measurement

StDev = the standard deviation of the measurement