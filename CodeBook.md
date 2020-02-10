---
title: "Code Book"
output: html_document
---
This code book that describes the variables, the data, and any transformations or work performed to clean up the data.
# Input Data
[Course Project Data](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

#About the data
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 
# Data Activities
Original data was transformed by importing and merging via rbind then cbind the X_train.txt,y_train.txt,X_test.txt, and X_test.txt datasets.
Transformation of variables involved appropriately labeling the data set with descriptive variable names using gsub. 
# Output Data
The file run_analysis.R will produce FinalData.txt file consisting of a 181x89 dataset. The dataset consists of the means of features for 6 activities (walking, laying, standing, sitting, walking downstairs, and walking upstairs).

## Variables
*	TimeBodyAccelerometer.mean...X
*	TimeBodyAccelerometer.mean...Y
*	TimeBodyAccelerometer.mean...Z
*	TimeGravityAccelerometer.mean...X
*	TimeGravityAccelerometer.mean...Y
*	TimeGravityAccelerometer.mean...Z
*	TimeBodyAccelerometerJerk.mean...X
*	TimeBodyAccelerometerJerk.mean...Y
*	TimeBodyAccelerometerJerk.mean...Z
*	TimeBodyGyro.mean...X
*	TimeBodyGyro.mean...Y
*	TimeBodyGyro.mean...Z
*	TimeBodyGyroJerk.mean...X
*	TimeBodyGyroJerk.mean...Y
*	TimeBodyGyroJerk.mean...Z
*	TimeBodyAccelerometerMagnitude.mean..
*	TimeGravityAccelerometerMagnitude.mean..
*	TimeBodyAccelerometerJerkMagnitude.mean..
*	TimeBodyGyroMagnitude.mean..
*	TimeBodyGyroJerkMagnitude.mean..
*	FrequencyBodyAccelerometer.mean...X
*	FrequencyBodyAccelerometer.mean...Y
*	FrequencyBodyAccelerometer.mean...Z
*	FrequencyBodyAccelerometer.meanFreq...X
*	FrequencyBodyAccelerometer.meanFreq...Y
*	FrequencyBodyAccelerometer.meanFreq...Z
*	FrequencyBodyAccelerometerJerk.mean...X
*	FrequencyBodyAccelerometerJerk.mean...Y
*	FrequencyBodyAccelerometerJerk.mean...Z
*	FrequencyBodyAccelerometerJerk.meanFreq...X
*	FrequencyBodyAccelerometerJerk.meanFreq...Y
*	FrequencyBodyAccelerometerJerk.meanFreq...Z
*	FrequencyBodyGyro.mean...X
*	FrequencyBodyGyro.mean...Y
*	FrequencyBodyGyro.mean...Z
*	FrequencyBodyGyro.meanFreq...X
*	FrequencyBodyGyro.meanFreq...Y
*	FrequencyBodyGyro.meanFreq...Z
*	FrequencyBodyAccelerometerMagnitude.mean..
*	FrequencyBodyAccelerometerMagnitude.meanFreq..
*	FrequencyBodyAccelerometerJerkMagnitude.mean..
*	FrequencyBodyAccelerometerJerkMagnitude.meanFreq..
*	FrequencyBodyGyroMagnitude.mean..
*	FrequencyBodyGyroMagnitude.meanFreq..
*	FrequencyBodyGyroJerkMagnitude.mean..
*	FrequencyBodyGyroJerkMagnitude.meanFreq..
*	angle.TimeBodyAccelerometerMean.gravity.
*	angle.TimeBodyAccelerometerJerkMean..gravityMean.
*	angle.TimeBodyGyroMean.gravityMean.
*	angle.TimeBodyGyroJerkMean.gravityMean.
*	angle.X.gravityMean.
*	angle.Y.gravityMean.
*	angle.Z.gravityMean.
*	TimeBodyAccelerometer.std...X
*	TimeBodyAccelerometer.std...Y
*	TimeBodyAccelerometer.std...Z
*	TimeGravityAccelerometer.std...X
*	TimeGravityAccelerometer.std...Y
*	TimeGravityAccelerometer.std...Z
*	TimeBodyAccelerometerJerk.std...X
*	TimeBodyAccelerometerJerk.std...Y
*	TimeBodyAccelerometerJerk.std...Z
*	TimeBodyGyro.std...X
*	TimeBodyGyro.std...Y
*	TimeBodyGyro.std...Z
*	TimeBodyGyroJerk.std...X
*	TimeBodyGyroJerk.std...Y
*	TimeBodyGyroJerk.std...Z
*	TimeBodyAccelerometerMagnitude.std..
*	TimeGravityAccelerometerMagnitude.std..
*	TimeBodyAccelerometerJerkMagnitude.std..
*	TimeBodyGyroMagnitude.std..
*	TimeBodyGyroJerkMagnitude.std..
*	FrequencyBodyAccelerometer.std...X
*	FrequencyBodyAccelerometer.std...Y
*	FrequencyBodyAccelerometer.std...Z
*	FrequencyBodyAccelerometerJerk.std...X
*	FrequencyBodyAccelerometerJerk.std...Y
*	FrequencyBodyAccelerometerJerk.std...Z
*	FrequencyBodyGyro.std...X
*	FrequencyBodyGyro.std...Y
*	FrequencyBodyGyro.std...Z
*	FrequencyBodyAccelerometerMagnitude.std..
*	FrequencyBodyAccelerometerJerkMagnitude.std..
*	FrequencyBodyGyroMagnitude.std..
*	FrequencyBodyGyroJerkMagnitude.std..
