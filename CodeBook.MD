#Code Book
The data fields from Output_Tidy_Dataset.txt and Output_Tidy_Dataset_Avg.txt will be detailed below.
  
#Descriptive Qualifier Fields
  1. Subject - Participant ID ranging from 1 to 30. Factor with 30 levels
  2. Activity - The Activity Name that the participant completed. Factor with 6 levels. The activity name values are as follows:
    * LAYING
    * SITTING
    * STANDING
    * WALKING
    * WALKING_DOWNSTAIRS
    * WALKING_UPSTAIRS
  
  #Measurement Fields
  The following measurement variables are numeric. For the Output_Tidy_Dataset_Avg, the columns represent the Average of the Mean and Standard Deviation variables. The feature variables were extracted from the features.txt and transformed as described below.  
  
  * tBodyAcc_Mean_Z
  * tGravityAcc_Mean_X
  * tGravityAcc_Std_Y
  * tBodyAccJerk_Mean_Z
  * tBodyGyro_Mean_X
  * tBodyGyro_Std_Y
  * tBodyGyroJerk_Mean_Z
  * tBodyAccMag_Mean
  * tBodyAccJerkMag_Mean
  * tBodyGyroJerkMag_Mean
  * fBodyAcc_Mean_Z
  * fBodyAcc_MeanFreq_X
  * fBodyAccJerk_Mean_Y
  * fBodyAccJerk_Std_Z
  * fBodyGyro_Mean_X
  * fBodyGyro_Std_Y
  * fBodyGyro_MeanFreq_Z
  * fBodyBodyAccJerkMag_Mean
  * fBodyBodyGyroMag_Std
  * fBodyBodyGyroJerkMag_MeanFreq
  * tBodyAcc_Std_X
  * tGravityAcc_Mean_Y
  * tGravityAcc_Std_Z
  * tBodyAccJerk_Std_X
  * tBodyGyro_Mean_Y
  * tBodyGyro_Std_Z
  * tBodyGyroJerk_Std_X
  * tBodyAccMag_Std
  * tBodyAccJerkMag_Std
  * tBodyGyroJerkMag_Std
  * fBodyAcc_Std_X
  * fBodyAcc_MeanFreq_Y
  * fBodyAccJerk_Mean_Z
  * fBodyAccJerk_MeanFreq_X
  * fBodyGyro_Mean_Y
  * fBodyGyro_Std_Z
  * fBodyAccMag_Mean
  * fBodyBodyAccJerkMag_Std
  * fBodyBodyGyroMag_MeanFreq
  * tBodyAcc_Std_Y
  * tGravityAcc_Mean_Z
  * tBodyAccJerk_Mean_X
  * tBodyAccJerk_Std_Y
  * tBodyGyro_Mean_Z
  * tBodyGyroJerk_Mean_X
  * tBodyGyroJerk_Std_Y
  * tGravityAccMag_Mean
  * tBodyGyroMag_Mean
  * fBodyAcc_Mean_X
  * fBodyAcc_Std_Y
  * fBodyAcc_MeanFreq_Z
  * fBodyAccJerk_Std_X
  * fBodyAccJerk_MeanFreq_Y
  * fBodyGyro_Mean_Z
  * fBodyGyro_MeanFreq_X
  * fBodyAccMag_Std
  * fBodyBodyAccJerkMag_MeanFreq
  * fBodyBodyGyroJerkMag_Mean
  * tBodyAcc_Std_Z
  * tGravityAcc_Std_X
  * tBodyAccJerk_Mean_Y
  * tBodyAccJerk_Std_Z
  * tBodyGyro_Std_X
  * tBodyGyroJerk_Mean_Y
  * tBodyGyroJerk_Std_Z
  * tGravityAccMag_Std
  * tBodyGyroMag_Std
  * fBodyAcc_Mean_Y
  * fBodyAcc_Std_Z
  * fBodyAccJerk_Mean_X
  * fBodyAccJerk_Std_Y
  * fBodyAccJerk_MeanFreq_Z
  * fBodyGyro_Std_X
  * fBodyGyro_MeanFreq_Y
  * fBodyAccMag_MeanFreq
  * fBodyBodyGyroMag_Mean
  * fBodyBodyGyroJerkMag_Std

#Transformations
    * Activity ID from the Train and Test datasets was joined to the Activity Names dataset and the Activity Names were used in place of the Activity ID. The Activity ID ranged from values 1 to 6 and were associated to one of the Activity Names listed above.  
   * Measurement Variable names were formatted to remove "-mean()" or "-std()" to "_Mean" and "_Std". Any "()" were removed and any "-" was replaced with an "_".   
