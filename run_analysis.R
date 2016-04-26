######
# Merges the training and the test sets to create one data set.
# Extracts only the measurements on the mean and standard deviation for each measurement.
# Uses descriptive activity names to name the activities in the data set
# Appropriately labels the data set with descriptive variable names.
# From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
######

library(reshape2)
library(dplyr)
library(tidyr)
library(plyr)
    
# Load Data
Activity_Names = read.table("UCI HAR Dataset/activity_labels.txt")
#####Load Features data and extract the features related to Mean and STD
features = read.table("UCI HAR Dataset/features.txt")
features_rows = grep("mean|std", features[,2])
#####Subset the train and test data to pull only columns that are related to Mean and STD
train = read.table("UCI HAR Dataset/train/X_train.txt")[features_rows]
Train_Activities_Set = read.table("UCI HAR Dataset/train/Y_train.txt")
Train_Subjects_Set = read.table("UCI HAR Dataset/train/subject_train.txt")
test = read.table("UCI HAR Dataset/test/X_test.txt")[features_rows]
Test_Activities_Set = read.table("UCI HAR Dataset/test/Y_test.txt")
Test_Subjects_Set = read.table("UCI HAR Dataset/test/subject_test.txt")

# Set up Train and Test Datasets with replacing Activity ID with Activity Names 
Test_Activity_C = join(Test_Activities_Set,Activity_Names,by = "V1")
Train_Activity_C = join(Train_Activities_Set,Activity_Names,by = "V1")
train = cbind(Subject = Train_Subjects_Set[,"V1"], Activity = Train_Activity_C[,"V2"], train)
test = cbind(Subject = Test_Subjects_Set[,"V1"], Activity = Test_Activity_C[,"V2"], test)

#Create Merged Data Set w/o formatted feature names
Merged_Data = rbind(train, test)
Merged_Data$Activity = as.factor(Merged_Data$Activity)
Merged_Data$Subject = as.factor(Merged_Data$Subject)

# Format Feature Names so it can be properly applied to Merged Data afterwards
features_rows.names = features[features_rows,2]
features_rows.names = gsub('-mean()', '_Mean', features_rows.names)
features_rows.names = gsub('-std()', '_Std', features_rows.names)
features_rows.names = gsub('[()]', '', features_rows.names)
features_rows.names = gsub('[-]', '_', features_rows.names)

# Apply column names to Merged Data with revised feature names and write first table with tidy data
colnames(Merged_Data) = c("Subject", "Activity", features_rows.names)
write.table(Merged_Data, "Output_Tidy_Dataset.txt", row.names = FALSE, quote = FALSE)

Merged_Data_C = melt(Merged_Data, id = c("Subject", "Activity"))
Merged_Data_Average = dcast(Merged_Data_C, Subject + Activity ~ variable, mean)

write.table(Merged_Data_Average, "Output_Tidy_Dataset_Avg.txt", row.names = FALSE, quote = FALSE)
