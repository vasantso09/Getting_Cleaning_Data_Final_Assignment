# Getting and Cleaning Data Final Assignment
Prior to running the run_analysis.R script, please download the UCI Human Activity dataset and unzip it in the appropriate folder. Then set your current working directory to the folder that holds the UCI Human Activity dataset. (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

The run_analysis.R script completes the following tasks:
  1. Loads the appropriate data from the UCI Human Activity dataset
  2. Extracts Mean or Standard Deviation variables from Features dataset
  3. Subsets the train and test datasets by the Features Mean & Std variables
  4. Merges the Train and Test datasets (includes Activity, Subject, Feature values) as well as the Activity Names datasets
  5. Formats Feature variables
  6. Produces Output_Tidy_Dataset.txt which includes the tidy dataset of the merged train, test, activity name, and feature name datasets
  7. Calculates the average feature variable by subject and activity
  8. Produces Output_Tidy_Dataset_Avg.txt which includes tidy dataset of the merged dataset where the average feature variable are calculated by subject and activity



