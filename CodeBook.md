CodeBook

This is a code book which indicates all the variables and summaries calculated, along with units, and any other relevant information.

	1. featurenames - 561 labels for the variables that are measured
	   X_test - (2947 rows 561 columns) all the data that is gathered from the 561 variables and all the participants in the test group
	   Y_test - (2947 rows 1 column) contains all the activities code labels for each data obervation observed
	   subject_test - (2947 rows 1 column) contains the participant id for each data observation observed 
	   Y_train - (7352 rows 1 column) Same description as Y_test except its with the train group
	   X_train - (7352 rows 561 columns) Same description as X_test except its with the train group
	   subject_train - (7352 rows 1 column) Same description as subject_test except its with the train group
	   Activity_labels - (6 rows 2 columns) Contains the code label for each activity name

	2. Test - binded columns of the variables: subject_test, Y_test, X_test
	   Train - binded column of the variables: subject_train, Y_train, X_train
	   merged_data - binded the rows of the variables: Test, Train
	Doing this merged all the data into one workable dataframe

	3. Extracted_data - (10299 rows 88 columns) Extracted the variables that were calculating mean or std as per instructions 

	4. No new variables were created but I changed the activity code labels into their descriptive name

	5. Changed the names of the variables to be clearer and more descriptive 
	   t - changed to Time 
	   f - changed to Frequency 
	   Acc - changed to Accelerometer
	   Gyro - changed to Gyroscope
	   BodyBody - changed to Body
	   Mag - changed to Magnitude 
	   Also got rid of some parentheses and capitalised letters where needed

	6. Mean_Data -  was created as a second, independent tidy data set with the average of each variable for each activity and each subject.

List of measurements 
[3] "TimeBodyAccelerometer-mean-X"                      "TimeBodyAccelerometer-mean-Y"                     
 [5] "TimeBodyAccelerometer-mean-Z"                      "TimeGravityAccelerometer-mean-X"                  
 [7] "TimeGravityAccelerometer-mean-Y"                   "TimeGravityAccelerometer-mean-Z"                  
 [9] "TimeBodyAccelerometerJerk-mean-X"                  "TimeBodyAccelerometerJerk-mean-Y"                 
[11] "TimeBodyAccelerometerJerk-mean-Z"                  "TimeBodyGyroscope-mean-X"                         
[13] "TimeBodyGyroscope-mean-Y"                          "TimeBodyGyroscope-mean-Z"                         
[15] "TimeBodyGyroscopeJerk-mean-X"                      "TimeBodyGyroscopeJerk-mean-Y"                     
[17] "TimeBodyGyroscopeJerk-mean-Z"                      "TimeBodyAccelerometerMagnitude-mean"              
[19] "TimeGravityAccelerometerMagnitude-mean"            "TimeBodyAccelerometerJerkMagnitude-mean"          
[21] "TimeBodyGyroscopeMagnitude-mean"                   "TimeBodyGyroscopeJerkMagnitude-mean"              
[23] "FrequencyBodyAccelerometer-mean-X"                 "FrequencyBodyAccelerometer-mean-Y"                
[25] "FrequencyBodyAccelerometer-mean-Z"                 "FrequencyBodyAccelerometer-meanFreq-X"            
[27] "FrequencyBodyAccelerometer-meanFreq-Y"             "FrequencyBodyAccelerometer-meanFreq-Z"            
[29] "FrequencyBodyAccelerometerJerk-mean-X"             "FrequencyBodyAccelerometerJerk-mean-Y"            
[31] "FrequencyBodyAccelerometerJerk-mean-Z"             "FrequencyBodyAccelerometerJerk-meanFreq-X"        
[33] "FrequencyBodyAccelerometerJerk-meanFreq-Y"         "FrequencyBodyAccelerometerJerk-meanFreq-Z"        
[35] "FrequencyBodyGyroscope-mean-X"                     "FrequencyBodyGyroscope-mean-Y"                    
[37] "FrequencyBodyGyroscope-mean-Z"                     "FrequencyBodyGyroscope-meanFreq-X"                
[39] "FrequencyBodyGyroscope-meanFreq-Y"                 "FrequencyBodyGyroscope-meanFreq-Z"                
[41] "FrequencyBodyAccelerometerMagnitude-mean"          "FrequencyBodyAccelerometerMagnitude-meanFreq"     
[43] "FrequencyBodyAccelerometerJerkMagnitude-mean"      "FrequencyBodyAccelerometerJerkMagnitude-meanFreq" 
[45] "FrequencyBodyGyroscopeMagnitude-mean"              "FrequencyBodyGyroscopeMagnitude-meanFreq"         
[47] "FrequencyBodyGyroscopeJerkMagnitude-mean"          "FrequencyBodyGyroscopeJerkMagnitude-meanFreq"     
[49] "Angle(TimeBodyAccelerometerMean,Gravity)"          "Angle(TimeBodyAccelerometerJerkMean),GravityMean)"
[51] "Angle(TimeBodyGyroscopeMean,GravityMean)"          "Angle(TimeBodyGyroscopeJerkMean,GravityMean)"     
[53] "Angle(X,GravityMean)"                              "Angle(Y,GravityMean)"                             
[55] "Angle(Z,GravityMean)"                              "TimeBodyAccelerometer-std-X"                      
[57] "TimeBodyAccelerometer-std-Y"                       "TimeBodyAccelerometer-std-Z"                      
[59] "TimeGravityAccelerometer-std-X"                    "TimeGravityAccelerometer-std-Y"                   
[61] "TimeGravityAccelerometer-std-Z"                    "TimeBodyAccelerometerJerk-std-X"                  
[63] "TimeBodyAccelerometerJerk-std-Y"                   "TimeBodyAccelerometerJerk-std-Z"                  
[65] "TimeBodyGyroscope-std-X"                           "TimeBodyGyroscope-std-Y"                          
[67] "TimeBodyGyroscope-std-Z"                           "TimeBodyGyroscopeJerk-std-X"                      
[69] "TimeBodyGyroscopeJerk-std-Y"                       "TimeBodyGyroscopeJerk-std-Z"                      
[71] "TimeBodyAccelerometerMagnitude-std"                "TimeGravityAccelerometerMagnitude-std"            
[73] "TimeBodyAccelerometerJerkMagnitude-std"            "TimeBodyGyroscopeMagnitude-std"                   
[75] "TimeBodyGyroscopeJerkMagnitude-std"                "FrequencyBodyAccelerometer-std-X"                 
[77] "FrequencyBodyAccelerometer-std-Y"                  "FrequencyBodyAccelerometer-std-Z"                 
[79] "FrequencyBodyAccelerometerJerk-std-X"              "FrequencyBodyAccelerometerJerk-std-Y"             
[81] "FrequencyBodyAccelerometerJerk-std-Z"              "FrequencyBodyGyroscope-std-X"                     
[83] "FrequencyBodyGyroscope-std-Y"                      "FrequencyBodyGyroscope-std-Z"                     
[85] "FrequencyBodyAccelerometerMagnitude-std"           "FrequencyBodyAccelerometerJerkMagnitude-std"      
[87] "FrequencyBodyGyroscopeMagnitude-std"               "FrequencyBodyGyroscopeJerkMagnitude-std"  

More info on these measurements
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:
======================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.
