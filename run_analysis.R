# GETTING AND CLEANING DATA - COURSE PROJECT 
#
# To create one R script called run_analysis.R that does the following:
# 1.  Merges the training and the test sets to create one data set.
# 2.  Extracts only the measurements on the mean and standard deviation for each measurement. 
# 3.  Uses descriptive activity names to name the activities in the data set.
# 4.  Appropriately labels the data set with descriptive variable names.
# 5.  From the data set in step 4, creates a second, independent tidy data set with 
#     the average of each variable for each activity and each subject.
# -------------------------------------------------------------------------------------------

# i) Read the activity files

filePath <- file.path("F:/M03Project")
dataActivityTest  <- read.table(file.path(filePath, "test" , "Y_test.txt" ),header = FALSE)
dataActivityTrain <- read.table(file.path(filePath, "train", "Y_train.txt"),header = FALSE)

# ii) Read the Subject files

dataSubjectTrain <- read.table(file.path(filePath, "train", "subject_train.txt"),header = FALSE)
dataSubjectTest  <- read.table(file.path(filePath, "test" , "subject_test.txt"),header = FALSE)

# iii) Read the Features files
dataFeaturesTest  <- read.table(file.path(filePath, "test" , "X_test.txt" ),header = FALSE)
dataFeaturesTrain <- read.table(file.path(filePath, "train", "X_train.txt"),header = FALSE)


# 1. Merge the training and test sets to create one data set.

# i) Concatenate the data tables by rows

dataSubject <- rbind(dataSubjectTrain, dataSubjectTest)
dataActivity<- rbind(dataActivityTrain, dataActivityTest)
dataFeatures<- rbind(dataFeaturesTrain, dataFeaturesTest)

# ii) Set names to variables

names(dataSubject)<-c("subject")
names(dataActivity)<- c("activity")
dataFeaturesNames <- read.table(file.path(filePath, "features.txt"),head=FALSE)
names(dataFeatures)<- dataFeaturesNames$V2

# iii) Merge column to get the data frame for all data

dataMerge <- cbind(dataSubject, dataActivity)
View(dataMerge) # to view merged data of Subject and Activity

Data <- cbind(dataFeatures, dataMerge)
View(Data) # to view merged data of Subject, Activity and Features

# 2. Extract only the the mean and standard deviation for each measurement.

# i) Subset name of Features by measurements on the mean and standard deviation, 
#    taken Names of Features with mean() or std()

subdataFeaturesNames<-dataFeaturesNames$V2[grep("mean\\(\\)|std\\(\\)", dataFeaturesNames$V2)]

## ii) Subset the data frame Data by selected names of features

selectedNames<-c(as.character(subdataFeaturesNames), "subject", "activity" )
Data<-subset(Data,select=selectedNames)

# Check the structure of the data frame Data
str(Data) 

# 3. Use descriptive activity names to name the activities in the data set

# i) Read descriptive activity names from "activity_label.txt"

activityLabels <- read.table(file.path(filePath, "activity_labels.txt"), header=FALSE)


# ii) Factorize variable activity in the data frame Data by using descriptive activity names 

Data$activity <- factor(Data$activity, labels = activityLabels[,2])

# Check the factorized variable
head(Data$activity,100)
View(Data)

# 4. Label the data set with descriptive activity names. 

names(Data)<-gsub("^t", "time", names(Data)) # prefix t is replaced by time
names(Data)<-gsub("^f", "frequency", names(Data)) # prefix f is replaced by frequency
names(Data)<-gsub("Acc", "Accelerometer", names(Data)) # Acc is replaced by Accelerometer
names(Data)<-gsub("Gyro", "Gyroscope", names(Data)) #Gyro is replaced by Gyroscope
names(Data)<-gsub("Mag", "Magnitude", names(Data)) #Mag is replaced by Magnitude
names(Data)<-gsub("BodyBody", "Body", names(Data)) #BodyBody is replaced by Body

# Check the replacement made
names(Data)

# 5. Creates a second, independent tidy data set with the average of each 
# variable for each activity and each subject based on the data set in step 4.

library(plyr);
Data2<-aggregate(. ~subject + activity, Data, mean)
Data2<-Data2[order(Data2$subject,Data2$activity),]
write.table(Data2, file = "tidydata.txt",row.name=FALSE)

