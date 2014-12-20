#Codebook

##Activity Label
	1 WALKING

	2 WALKING_UPSTAIRS

	3 WALKING_DOWNSTAIRS

	4 SITTING

	5 STANDING

	6 LAYING


##Feature Selection 

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 
Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 
Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 
These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

* tBodyAcc-XYZ
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc-XYZ
* fBodyAccJerk-XYZ
* fBodyGyro-XYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
meanFreq(): Weighted average of the frequency components to obtain a mean frequency


Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

* gravityMean
* tBodyAccMean
* tBodyAccJerkMean
* tBodyGyroMean
* tBodyGyroJerkMean

The complete list of variables of each feature vector is listed below

##Feature
* Activity 
* Subject 
* timeBodyAcceleration-Mean-X 
* timeBodyAcceleration-Mean-Y 
* timeBodyAcceleration-Mean-Z 
* timeGravityAcceleration-Mean-X 
* timeGravityAcceleration-Mean-Y 
* timeGravityAcceleration-Mean-Z 
* timeBodyAccelerationJerk-Mean-X 
* timeBodyAccelerationJerk-Mean-Y 
* timeBodyAccelerationJerk-Mean-Z 
* timeBodyGyro-Mean-X 
* timeBodyGyro-Mean-Y 
* timeBodyGyro-Mean-Z 
* timeBodyGyroJerk-Mean-X 
* timeBodyGyroJerk-Mean-Y 
* timeBodyGyroJerk-Mean-Z 
* timeBodyAccelerationMagnitude-Mean 
* timeGravityAccelerationMagnitude-Mean 
* timeBodyAccelerationJerkMagnitude-Mean 
* timeBodyGyroMagnitude-Mean 
* timeBodyGyroJerkMagnitude-Mean 
* FrequencyBodyAcceleration-Mean-X 
* FrequencyBodyAcceleration-Mean-Y 
* FrequencyBodyAcceleration-Mean-Z 
* FrequencyBodyAcceleration-MeanFrequency-X 
* FrequencyBodyAcceleration-MeanFrequency-Y 
* FrequencyBodyAcceleration-MeanFrequency-Z 
* FrequencyBodyAccelerationJerk-Mean-X 
* FrequencyBodyAccelerationJerk-Mean-Y 
* FrequencyBodyAccelerationJerk-Mean-Z 
* FrequencyBodyAccelerationJerk-MeanFrequency-X 
* FrequencyBodyAccelerationJerk-MeanFrequency-Y 
* FrequencyBodyAccelerationJerk-MeanFrequency-Z 
* FrequencyBodyGyro-Mean-X FrequencyBodyGyro-Mean-Y 
* FrequencyBodyGyro-Mean-Z FrequencyBodyGyro-MeanFrequency-X 
* FrequencyBodyGyro-MeanFrequency-Y FrequencyBodyGyro-MeanFrequency-Z 
* FrequencyBodyAccelerationMagnitude-Mean 
* FrequencyBodyAccelerationMagnitude-MeanFrequency 
* FrequencyBodyAccelerationJerkMagnitude-Mean 
* FrequencyBodyAccelerationJerkMagnitude-MeanFrequency 
* FrequencyBodyGyroMagnitude-Mean 
* FrequencyBodyGyroMagnitude-MeanFrequency 
* FrequencyBodyGyroJerkMagnitude-Mean 
* FrequencyBodyGyroJerkMagnitude-MeanFrequency 
* timeBodyAcceleration-StdDev-X 
* timeBodyAcceleration-StdDev-Y 
* timeBodyAcceleration-StdDev-Z 
* timeGravityAcceleration-StdDev-X 
* timeGravityAcceleration-StdDev-Y 
* timeGravityAcceleration-StdDev-Z 
* timeBodyAccelerationJerk-StdDev-X 
* timeBodyAccelerationJerk-StdDev-Y 
* timeBodyAccelerationJerk-StdDev-Z 
* timeBodyGyro-StdDev-X 
* timeBodyGyro-StdDev-Y 
* timeBodyGyro-StdDev-Z 
* timeBodyGyroJerk-StdDev-X 
* timeBodyGyroJerk-StdDev-Y 
* timeBodyGyroJerk-StdDev-Z 
* timeBodyAccelerationMagnitude-StdDev 
* timeGravityAccelerationMagnitude-StdDev 
* timeBodyAccelerationJerkMagnitude-StdDev 
* timeBodyGyroMagnitude-StdDev 
* timeBodyGyroJerkMagnitude-StdDev 
* FrequencyBodyAcceleration-StdDev-X 
* FrequencyBodyAcceleration-StdDev-Y 
* FrequencyBodyAcceleration-StdDev-Z 
* FrequencyBodyAccelerationJerk-StdDev-X 
* FrequencyBodyAccelerationJerk-StdDev-Y 
* FrequencyBodyAccelerationJerk-StdDev-Z 
* FrequencyBodyGyro-StdDev-X 
* FrequencyBodyGyro-StdDev-Y 
* FrequencyBodyGyro-StdDev-Z 
* FrequencyBodyAccelerationMagnitude-StdDev 
* FrequencyBodyAccelerationJerkMagnitude-StdDev 
* FrequencyBodyGyroMagnitude-StdDev 
* FrequencyBodyGyroJerkMagnitude-StdDev
