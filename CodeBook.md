##  Getting and Cleaning Data Course Project
## This is a  code book that describes the variables, the data and transformations/work performed to clean up data   
 

1.  The downloaded compressed file consist of  28 files as below:

##  [1] "activity_labels.txt"                         
##  [2] "features_info.txt"                           
##  [3] "features.txt"                                
##  [4] "README.txt"                                  
##  [5] "test/Inertial Signals/body_acc_x_test.txt"   
##  [6] "test/Inertial Signals/body_acc_y_test.txt"   
##  [7] "test/Inertial Signals/body_acc_z_test.txt"   
##  [8] "test/Inertial Signals/body_gyro_x_test.txt"  
##  [9] "test/Inertial Signals/body_gyro_y_test.txt"  
## [10] "test/Inertial Signals/body_gyro_z_test.txt"  
## [11] "test/Inertial Signals/total_acc_x_test.txt"  
## [12] "test/Inertial Signals/total_acc_y_test.txt"  
## [13] "test/Inertial Signals/total_acc_z_test.txt"  
## [14] "test/subject_test.txt"                       
## [15] "test/X_test.txt"                             
## [16] "test/y_test.txt"                             
## [17] "train/Inertial Signals/body_acc_x_train.txt" 
## [18] "train/Inertial Signals/body_acc_y_train.txt" 
## [19] "train/Inertial Signals/body_acc_z_train.txt" 
## [20] "train/Inertial Signals/body_gyro_x_train.txt"
## [21] "train/Inertial Signals/body_gyro_y_train.txt"
## [22] "train/Inertial Signals/body_gyro_z_train.txt"
## [23] "train/Inertial Signals/total_acc_x_train.txt"
## [24] "train/Inertial Signals/total_acc_y_train.txt"
## [25] "train/Inertial Signals/total_acc_z_train.txt"
## [26] "train/subject_train.txt"                     
## [27] "train/X_train.txt"                           
## [28] "train/y_train.txt"

2.  From README.txt file for the detailed information on the dataset, the files in the Inertial Signals folders are not used for the purpose of this project. 
     The files that will be used to load data are listed as follows:

    test/subject_test.txt
    test/X_test.txt
    test/y_test.txt
    train/subject_train.txt
    train/X_train.txt
    train/y_train.txt

3. Read data from the targeted files and get big picture of the structure of the data frame, which is:    

    Values of Varible Activity consist of data from “Y_train.txt” and “Y_test.txt”
    values of Varible Subject consist of data from “subject_train.txt” and subject_test.txt"
    Values of Varibles Features consist of data from “X_train.txt” and “X_test.txt”
    Names of Varibles Features come from “features.txt”
    levels of Varible Activity come from “activity_labels.txt”

    Use Activity, Subject and Features as part of descriptive variable names for data in data frame.

2.  Read data from the files and into the variables:

	Activity files		
	Subject files
	Read Features files

      Look at the properties of the above varibles, then merges the training and the test sets to create one data set
     
3.  Merges the training and the test sets to create one data set, steps as below:
	
     Concatenate the data tables by rows
     Extracts only the measurements on the mean and standard deviation for each measurement
     Subset Name of Features by measurements on the mean and standard deviation
    Subset the data frame Data by seleted names of Features
    Check the structures of the data frame Data, which is as follow:

'data.frame':	10299 obs. of  68 variables:
 $ tBodyAcc-mean()-X          : num  0.289 0.278 0.28 0.279 0.277 ...
 $ tBodyAcc-mean()-Y          : num  -0.0203 -0.0164 -0.0195 -0.0262 -0.0166 ...
 $ tBodyAcc-mean()-Z          : num  -0.133 -0.124 -0.113 -0.123 -0.115 ...
 $ tBodyAcc-std()-X           : num  -0.995 -0.998 -0.995 -0.996 -0.998 ...
 $ tBodyAcc-std()-Y           : num  -0.983 -0.975 -0.967 -0.983 -0.981 ...
 $ tBodyAcc-std()-Z           : num  -0.914 -0.96 -0.979 -0.991 -0.99 ...
 $ tGravityAcc-mean()-X       : num  0.963 0.967 0.967 0.968 0.968 ...
 $ tGravityAcc-mean()-Y       : num  -0.141 -0.142 -0.142 -0.144 -0.149 ...
 $ tGravityAcc-mean()-Z       : num  0.1154 0.1094 0.1019 0.0999 0.0945 ...
 $ tGravityAcc-std()-X        : num  -0.985 -0.997 -1 -0.997 -0.998 ...
 $ tGravityAcc-std()-Y        : num  -0.982 -0.989 -0.993 -0.981 -0.988 ...
 $ tGravityAcc-std()-Z        : num  -0.878 -0.932 -0.993 -0.978 -0.979 ...
 $ tBodyAccJerk-mean()-X      : num  0.078 0.074 0.0736 0.0773 0.0734 ...
 $ tBodyAccJerk-mean()-Y      : num  0.005 0.00577 0.0031 0.02006 0.01912 ...
 $ tBodyAccJerk-mean()-Z      : num  -0.06783 0.02938 -0.00905 -0.00986 0.01678 ...
 $ tBodyAccJerk-std()-X       : num  -0.994 -0.996 -0.991 -0.993 -0.996 ...
 $ tBodyAccJerk-std()-Y       : num  -0.988 -0.981 -0.981 -0.988 -0.988 ...
 $ tBodyAccJerk-std()-Z       : num  -0.994 -0.992 -0.99 -0.993 -0.992 ...
 $ tBodyGyro-mean()-X         : num  -0.0061 -0.0161 -0.0317 -0.0434 -0.034 ...
 $ tBodyGyro-mean()-Y         : num  -0.0314 -0.0839 -0.1023 -0.0914 -0.0747 ...
 $ tBodyGyro-mean()-Z         : num  0.1077 0.1006 0.0961 0.0855 0.0774 ...
 $ tBodyGyro-std()-X          : num  -0.985 -0.983 -0.976 -0.991 -0.985 ...
 $ tBodyGyro-std()-Y          : num  -0.977 -0.989 -0.994 -0.992 -0.992 ...
 $ tBodyGyro-std()-Z          : num  -0.992 -0.989 -0.986 -0.988 -0.987 ...
 $ tBodyGyroJerk-mean()-X     : num  -0.0992 -0.1105 -0.1085 -0.0912 -0.0908 ...
 $ tBodyGyroJerk-mean()-Y     : num  -0.0555 -0.0448 -0.0424 -0.0363 -0.0376 ...
 $ tBodyGyroJerk-mean()-Z     : num  -0.062 -0.0592 -0.0558 -0.0605 -0.0583 ...
 $ tBodyGyroJerk-std()-X      : num  -0.992 -0.99 -0.988 -0.991 -0.991 ...
 $ tBodyGyroJerk-std()-Y      : num  -0.993 -0.997 -0.996 -0.997 -0.996 ...
 $ tBodyGyroJerk-std()-Z      : num  -0.992 -0.994 -0.992 -0.993 -0.995 ...
 $ tBodyAccMag-mean()         : num  -0.959 -0.979 -0.984 -0.987 -0.993 ...
 $ tBodyAccMag-std()          : num  -0.951 -0.976 -0.988 -0.986 -0.991 ...
 $ tGravityAccMag-mean()      : num  -0.959 -0.979 -0.984 -0.987 -0.993 ...
 $ tGravityAccMag-std()       : num  -0.951 -0.976 -0.988 -0.986 -0.991 ...
 $ tBodyAccJerkMag-mean()     : num  -0.993 -0.991 -0.989 -0.993 -0.993 ...
 $ tBodyAccJerkMag-std()      : num  -0.994 -0.992 -0.99 -0.993 -0.996 ...
 $ tBodyGyroMag-mean()        : num  -0.969 -0.981 -0.976 -0.982 -0.985 ...
 $ tBodyGyroMag-std()         : num  -0.964 -0.984 -0.986 -0.987 -0.989 ...
 $ tBodyGyroJerkMag-mean()    : num  -0.994 -0.995 -0.993 -0.996 -0.996 ...
 $ tBodyGyroJerkMag-std()     : num  -0.991 -0.996 -0.995 -0.995 -0.995 ...
 $ fBodyAcc-mean()-X          : num  -0.995 -0.997 -0.994 -0.995 -0.997 ...
 $ fBodyAcc-mean()-Y          : num  -0.983 -0.977 -0.973 -0.984 -0.982 ...
 $ fBodyAcc-mean()-Z          : num  -0.939 -0.974 -0.983 -0.991 -0.988 ...
 $ fBodyAcc-std()-X           : num  -0.995 -0.999 -0.996 -0.996 -0.999 ...
 $ fBodyAcc-std()-Y           : num  -0.983 -0.975 -0.966 -0.983 -0.98 ...
 $ fBodyAcc-std()-Z           : num  -0.906 -0.955 -0.977 -0.99 -0.992 ...
 $ fBodyAccJerk-mean()-X      : num  -0.992 -0.995 -0.991 -0.994 -0.996 ...
 $ fBodyAccJerk-mean()-Y      : num  -0.987 -0.981 -0.982 -0.989 -0.989 ...
 $ fBodyAccJerk-mean()-Z      : num  -0.99 -0.99 -0.988 -0.991 -0.991 ...
 $ fBodyAccJerk-std()-X       : num  -0.996 -0.997 -0.991 -0.991 -0.997 ...
 $ fBodyAccJerk-std()-Y       : num  -0.991 -0.982 -0.981 -0.987 -0.989 ...
 $ fBodyAccJerk-std()-Z       : num  -0.997 -0.993 -0.99 -0.994 -0.993 ...
 $ fBodyGyro-mean()-X         : num  -0.987 -0.977 -0.975 -0.987 -0.982 ...
 $ fBodyGyro-mean()-Y         : num  -0.982 -0.993 -0.994 -0.994 -0.993 ...
 $ fBodyGyro-mean()-Z         : num  -0.99 -0.99 -0.987 -0.987 -0.989 ...
 $ fBodyGyro-std()-X          : num  -0.985 -0.985 -0.977 -0.993 -0.986 ...
 $ fBodyGyro-std()-Y          : num  -0.974 -0.987 -0.993 -0.992 -0.992 ...
 $ fBodyGyro-std()-Z          : num  -0.994 -0.99 -0.987 -0.989 -0.988 ...
 $ fBodyAccMag-mean()         : num  -0.952 -0.981 -0.988 -0.988 -0.994 ...
 $ fBodyAccMag-std()          : num  -0.956 -0.976 -0.989 -0.987 -0.99 ...
 $ fBodyBodyAccJerkMag-mean() : num  -0.994 -0.99 -0.989 -0.993 -0.996 ...
 $ fBodyBodyAccJerkMag-std()  : num  -0.994 -0.992 -0.991 -0.992 -0.994 ...
 $ fBodyBodyGyroMag-mean()    : num  -0.98 -0.988 -0.989 -0.989 -0.991 ...
 $ fBodyBodyGyroMag-std()     : num  -0.961 -0.983 -0.986 -0.988 -0.989 ...
 $ fBodyBodyGyroJerkMag-mean(): num  -0.992 -0.996 -0.995 -0.995 -0.995 ...
 $ fBodyBodyGyroJerkMag-std() : num  -0.991 -0.996 -0.995 -0.995 -0.995 ...
 $ subject                    : int  1 1 1 1 1 1 1 1 1 1 ...
 $ activity                   : int  5 5 5 5 5 5 5 5 5 5 ...

4.  Uses descriptive activity names to name the activities in the data set

    Read descriptive activity names from “activity_labels.txt”
    Appropriately labels the data set with descriptive variable names descriptive names.  
    In this part, Names of Features will labelled using descriptive variable names as follows:

    prefix t is replaced by time
    Acc is replaced by Accelerometer
    Gyro is replaced by Gyroscope
    prefix f is replaced by frequency
    Mag is replaced by Magnitude
    BodyBody is replaced by Body
    Check the replacement made, result as follows:

 [1] "timeBodyAccelerometer-mean()-X"                
 [2] "timeBodyAccelerometer-mean()-Y"                
 [3] "timeBodyAccelerometer-mean()-Z"                
 [4] "timeBodyAccelerometer-std()-X"                 
 [5] "timeBodyAccelerometer-std()-Y"                 
 [6] "timeBodyAccelerometer-std()-Z"                 
 [7] "timeGravityAccelerometer-mean()-X"             
 [8] "timeGravityAccelerometer-mean()-Y"             
 [9] "timeGravityAccelerometer-mean()-Z"             
[10] "timeGravityAccelerometer-std()-X"              
[11] "timeGravityAccelerometer-std()-Y"              
[12] "timeGravityAccelerometer-std()-Z"              
[13] "timeBodyAccelerometerJerk-mean()-X"            
[14] "timeBodyAccelerometerJerk-mean()-Y"            
[15] "timeBodyAccelerometerJerk-mean()-Z"            
[16] "timeBodyAccelerometerJerk-std()-X"             
[17] "timeBodyAccelerometerJerk-std()-Y"             
[18] "timeBodyAccelerometerJerk-std()-Z"             
[19] "timeBodyGyroscope-mean()-X"                    
[20] "timeBodyGyroscope-mean()-Y"                    
[21] "timeBodyGyroscope-mean()-Z"                    
[22] "timeBodyGyroscope-std()-X"                     
[23] "timeBodyGyroscope-std()-Y"                     
[24] "timeBodyGyroscope-std()-Z"                     
[25] "timeBodyGyroscopeJerk-mean()-X"                
[26] "timeBodyGyroscopeJerk-mean()-Y"                
[27] "timeBodyGyroscopeJerk-mean()-Z"                
[28] "timeBodyGyroscopeJerk-std()-X"                 
[29] "timeBodyGyroscopeJerk-std()-Y"                 
[30] "timeBodyGyroscopeJerk-std()-Z"                 
[31] "timeBodyAccelerometerMagnitude-mean()"         
[32] "timeBodyAccelerometerMagnitude-std()"          
[33] "timeGravityAccelerometerMagnitude-mean()"      
[34] "timeGravityAccelerometerMagnitude-std()"       
[35] "timeBodyAccelerometerJerkMagnitude-mean()"     
[36] "timeBodyAccelerometerJerkMagnitude-std()"      
[37] "timeBodyGyroscopeMagnitude-mean()"             
[38] "timeBodyGyroscopeMagnitude-std()"              
[39] "timeBodyGyroscopeJerkMagnitude-mean()"         
[40] "timeBodyGyroscopeJerkMagnitude-std()"          
[41] "frequencyBodyAccelerometer-mean()-X"           
[42] "frequencyBodyAccelerometer-mean()-Y"           
[43] "frequencyBodyAccelerometer-mean()-Z"           
[44] "frequencyBodyAccelerometer-std()-X"            
[45] "frequencyBodyAccelerometer-std()-Y"            
[46] "frequencyBodyAccelerometer-std()-Z"            
[47] "frequencyBodyAccelerometerJerk-mean()-X"       
[48] "frequencyBodyAccelerometerJerk-mean()-Y"       
[49] "frequencyBodyAccelerometerJerk-mean()-Z"       
[50] "frequencyBodyAccelerometerJerk-std()-X"        
[51] "frequencyBodyAccelerometerJerk-std()-Y"        
[52] "frequencyBodyAccelerometerJerk-std()-Z"        
[53] "frequencyBodyGyroscope-mean()-X"               
[54] "frequencyBodyGyroscope-mean()-Y"               
[55] "frequencyBodyGyroscope-mean()-Z"               
[56] "frequencyBodyGyroscope-std()-X"                
[57] "frequencyBodyGyroscope-std()-Y"                
[58] "frequencyBodyGyroscope-std()-Z"                
[59] "frequencyBodyAccelerometerMagnitude-mean()"    
[60] "frequencyBodyAccelerometerMagnitude-std()"     
[61] "frequencyBodyAccelerometerJerkMagnitude-mean()"
[62] "frequencyBodyAccelerometerJerkMagnitude-std()" 
[63] "frequencyBodyGyroscopeMagnitude-mean()"        
[64] "frequencyBodyGyroscopeMagnitude-std()"         
[65] "frequencyBodyGyroscopeJerkMagnitude-mean()"    
[66] "frequencyBodyGyroscopeJerkMagnitude-std()"     
[67] "subject"                                       
[68] "activity"

Creates a second,independent tidy data set and ouput it
In this part,a second, independent tidy data set will be created with the average of each variable for each activity and each subject based on the data set in step 4.
Tidy data is then write to tidydata.txt


