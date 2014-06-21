## Code Book

Original data was obtained from from the "Human Activity Recognition Using Smartphones Data Set" which was originally made avaiable here: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The tidy data set has the following variables:
* "subject": varies from 1 to 30 and it corresponds to the subject that has carried out the experiment
* "activity": it can take one of the following names
  - LAYING
  - STANDING
  - SITTING
  - WALKING
  - WALKING_UPSTAIRS
  - WALKING_DOWNSTAIRS
* mean and standard deviation of the following measurements
   tBodyAcc-XYZ
   tGravityAcc-XYZ
   tBodyAccJerk-XYZ
   tBodyGyro-XYZ
   tBodyGyroJerk-XYZ
   tBodyAccMag
   tGravityAccMag
   tBodyAccJerkMag
   tBodyGyroMag
   tBodyGyroJerkMag
   fBodyAcc-XYZ
   fBodyAccJerk-XYZ
   fBodyGyro-XYZ
   fBodyAccMag
   fBodyAccJerkMag
   fBodyGyroMag
   fBodyGyroJerkMag

Details on obtaining this data set are in run_analysis.R script