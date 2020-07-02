library(data.table,plyr,dplyr) 
URL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(URL, destfile = "C3ProjectData.zip")
unzip("C3ProjectData.zip")
featurenames <- fread("UCI HAR Dataset/features.txt")
X_test <- fread("UCI HAR Dataset/test/X_test.txt",col.names = featurenames$V2)
Y_test <- fread("UCI HAR Dataset/test/Y_test.txt", col.names = "Activity")
subject_test <- fread("UCI HAR Dataset/test/subject_test.txt",col.names = "Subject_id")
Y_train <- fread("UCI HAR Dataset/train/Y_train.txt",col.names = "Activity")
X_train <- fread("UCI HAR Dataset/train/X_train.txt",col.names = featurenames$V2)
subject_train <- fread("UCI HAR Dataset/train/subject_train.txt",col.names = "Subject_id")
Activity_labels <- fread("UCI HAR Dataset/activity_labels.txt", col.names = c("Index","Activity"))

#1 Merging test and train data sets  

Test <- bind_cols(subject_test,Y_test,X_test)
Train <- bind_cols(subject_train,Y_train,X_train)
merged_data <- bind_rows(Test,Train)
 
#2 Extracting only mean and std from the measurements 

Extracted_data <- select(merged_data,Subject_id,Activity, contains("mean")|contains("std"))

#3 Uses descriptive names for the activities 

Extracted_data$Activity <- mapvalues(Extracted_data$Activity, from = c(1,2,3,4,5,6), to = c("WALKING","WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING"))

#4 Appropriately labels data set with descriptive variable names
 
names(Extracted_data) <- gsub("^t","Time",names(Extracted_data))
names(Extracted_data) <- gsub("^f", "Frequency", names(Extracted_data))
names(Extracted_data) <- gsub("Acc", "Accelerometer", names(Extracted_data))
names(Extracted_data) <- gsub("Gyro", "Gyroscope", names(Extracted_data))
names(Extracted_data) <- gsub("BodyBody", "Body", names(Extracted_data))
names(Extracted_data) <- gsub("Mag", "Magnitude", names(Extracted_data))
names(Extracted_data) <- gsub("\\()", "", names(Extracted_data))
names(Extracted_data) <- gsub("angle", "Angle", names(Extracted_data))
names(Extracted_data) <- gsub("tBody", "TimeBody", names(Extracted_data))
names(Extracted_data) <- gsub("gravity", "Gravity", names(Extracted_data))

#5 From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

Mean_Data <- Extracted_data %>% group_by(Subject_id,Activity) %>% summarise_all(funs(mean))

write.table(MeanData, "Data.txt", row.names = FALSE)
