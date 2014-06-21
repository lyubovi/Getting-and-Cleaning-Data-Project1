## Getting and Cleaning Data Course Project

# tidy_data.txt

Contains the tab delimited tidy_data set obtained from the data of the Programming Assignment for Getting and Cleaning Data from a Coursera course by John Hopkins University.

This data set is created by running run_analysis.R script


# run_analysis.R

This code reads the data extracted for the assignment from the link: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The code first reads the data sets in the zipped file:

- Activity Labels (activty_labels.txt)
- Features: variable names for the data sets (features.txt)
- Training Data:
  * X_train.txt the training dat set
  * Y_train.txt the activity factors for the training data set
  * subject_train.txt the subject factors for the training data set 
- Test Data:
  * X_test the test dat set
  * Y_test the activity factors for the test data set
  * subject_test.txt the subject factors for the test data set


The code runs the analysis for the following:  
1. Merges the training and the test sets to create one data set.  
2. Extracts only the measurements on the mean and standard deviation for each measurement.  
3. Uses descriptive activity names to name the activities in the data set.  
4. Appropriately labels the data set with descriptive activity names.  
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.  


# CodeBook.md

The codebook describes the variabes, data and transformatins performed on the original data set