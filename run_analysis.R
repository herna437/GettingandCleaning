library(dplyr)
x_test <- read.table("\\test\\X_test.txt", col.names = features$signal)
y_test <- read.table("\\test\\y_test.txt", col.names = "value")
subject_test <- read.table("\\test\\subject_test.txt", col.names = "subject")


x_train <- read.table("\\train\\X_train.txt", col.names = features$signal)
y_train <- read.table("\\train\\y_train.txt", col.names = "value")
subject_train <- read.table("\\train\\subject_train.txt", col.names = "subject")

activity <- read.table("\\activity_labels.txt", col.names = c("value", "activity"))
features <- read.table("\\features.txt", col.names = c("index","signal"))
 
 # 1. Merges the training and the test sets to create one data set.
Xmerge <- rbind(x_train, x_test)
Ymerge <- rbind(y_train, y_test)
Subject_merge <- rbind(subject_train, subject_test)
Merged_All <- cbind(Subject_merge, Xmerge, Ymerge)

 # 2.Extracts only the measurements on the mean and standard deviation for each measurement.
Filtered_Data <- Merged_All %>% select(subject, value, contains("mean"), contains("std"))
 
head(Filtered_Data$value ,n=1)

# 3. Uses descriptive activity names to name the activities in the data set
Filtered_Data$value <- activity[Filtered_Data$value, 2]
head(Filtered_Data$value ,n=1)

#4. Appropriately labels the data set with descriptive variable names.
head(Filtered_Data ,n=6)
str(Filtered_Data)
names(Filtered_Data)[2] = "activity" 
names(Filtered_Data)<-gsub("Mag", "Magnitude", names(Filtered_Data), ignore.case = TRUE)
names(Filtered_Data)<-gsub("^t", "Time", names(Filtered_Data), ignore.case = TRUE)
names(Filtered_Data)<-gsub("^f", "Frequency", names(Filtered_Data), ignore.case = TRUE)
names(Filtered_Data)<-gsub("Acc", "Accelerometer", names(Filtered_Data), ignore.case = TRUE)
names(Filtered_Data)<-gsub("BodyBody", "Body", names(Filtered_Data), ignore.case = TRUE)
names(Filtered_Data)<-gsub("tBody", "TimeBody", names(Filtered_Data), ignore.case = TRUE)
names(Filtered_Data)<-gsub("-mean()", "Mean", names(Filtered_Data), ignore.case = TRUE)
names(Filtered_Data)<-gsub("-std()", "STD", names(Filtered_Data), ignore.case = TRUE)
names(Filtered_Data)<-gsub("-freq()", "Frequency", names(Filtered_Data), ignore.case = TRUE) 
#5. From the data set in step 4, creates a second, independent tidy data set with the 
#   average of each variable for each activity and each subject.
 

FinalData<-aggregate(. ~subject + activity, Filtered_Data, mean)
write.csv(FinalData, "\\datasciencecoursera\\FinalData.csv" )

str(FinalData)
