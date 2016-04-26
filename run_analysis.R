#Load required packages
library(data.table)
library(dplyr)

#Download and upzip data
if(!file.exists("./data")){dir.create("./data")}
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl,destfile="./data/Dataset.zip")
unzip(zipfile="./data/Dataset.zip",exdir="./data")

#Create tables
filesPath <- file.path("./data" , "UCI HAR Dataset")
subjecttrain <- tbl_df(read.table(file.path(filesPath, "train", "subject_train.txt")))
subjecttest  <- tbl_df(read.table(file.path(filesPath, "test" , "subject_test.txt" )))
Xtrain <- tbl_df(read.table(file.path(filesPath, "train", "X_train.txt" )))
Xtest  <- tbl_df(read.table(file.path(filesPath, "test" , "X_test.txt" )))
Ytrain <- tbl_df(read.table(file.path(filesPath, "train", "y_train.txt")))
Ytest  <- tbl_df(read.table(file.path(filesPath, "test" , "y_test.txt" )))

# 1. Merge Training and Test
Subjectdata <- rbind(subjecttrain, subjecttest)
setnames(Subjectdata, "V1", "subject")

Xdata <- rbind(Xtrain, Xtest)
features <- tbl_df(read.table(file.path(filesPath, "features.txt")))
setnames(features, names(features), c("featurecode", "featurename"))
colnames(Xdata) <- features$featurename

Ydata <- rbind(Ytrain, Ytest)
setnames(Ydata, "V1", "activitycode")

activitylabels<- tbl_df(read.table(file.path(filesPath, "activity_labels.txt")))
setnames(activitylabels, names(activitylabels), c("activitycode","activityname"))

Mergedata <- cbind(Xdata, Ydata, Subjectdata)

# 2. Extract only the measurements on the mean and stdev for each measurement
features_MeanStd <- grep("mean\\(\\)|std\\(\\)", features$featurename, value=TRUE)
features_MeanStd <- union(c("subject", "activitycode"), features_MeanStd)
Mergedata <- subset(Mergedata, select = features_MeanStd)

# 3. Use descriptive activity names to name the activities in the data set
Mergedata <- merge(activitylabels, Mergedata, by = "activitycode", all.x=TRUE)
Mergedata$activitycode <- as.character(Mergedata$activityname)

# 4. Appropriately label the data set with descriptive variable names
names(Mergedata) <- gsub("^t", "time", names(Mergedata))
names(Mergedata) <- gsub("^f", "frequency", names(Mergedata))
names(Mergedata) <- gsub("Acc", "Accelerometer", names(Mergedata))
names(Mergedata) <- gsub("Gyro", "Gyroscope", names(Mergedata))
names(Mergedata) <- gsub("Mag", "Magnitude", names(Mergedata))
names(Mergedata) <- gsub("BodyBody", "Body", names(Mergedata))
names(Mergedata) <- gsub("std", "StDev", names(Mergedata))
names(Mergedata) <- gsub("mean", "Mean", names(Mergedata))

# 5. Creates a second, independent tidy data set with the average of each variable 
# for each activity and each subject
Mergedata$subject <- as.factor(Mergedata$subject)
Meragedata <- data.table(Mergedata)

Tidydata <- aggregate(. ~subject + activitycode, Mergedata, mean)
Tidydata <- Mergedata[order(Mergedata$subject, Mergedata$activitycode),]

write.table(Tidydata, "tidy.txt", row.name = FALSE)