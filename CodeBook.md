# CODE BOOK

## Study design

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years.

Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist.

Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz.

The experiments have been video-recorded to label the data manually.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window).

These time domain signals (prefix 'time') were captured at a constant rate of 50 Hz.

Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise.

The acceleration signal was then separated into body and gravity acceleration signals (timeBodyAcceleration-XYZ and timeGravityAcceleration-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (timeBodyAccelerationJerk-XYZ and timeBodyGyroscopeJerk-XYZ).

Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (timeBodyAccelerationMagnitude, timeGravityAccelerationMagnitude, timeBodyAccelerationJerkMagnitude, timeBodyGyroscopeMagnitude, timeBodyGyroscopeJerkMagnitude). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing frequenceBodyAcceleration-XYZ, frequenceBodyAccelerationJerk-XYZ, frequenceBodyGyroscope-XYZ, frequenceBodyAccelerationJerkMagnitude, frequenceBodyGyroscopeMagnitude, frequenceBodyGyroscopeJerkMagnitude.

These signals were used to calculate mean and standard deviation for each pattern.

Then the mean of these values (mean and standard deviation) was calculated for each couple subject / activity.

## Code book

The features were normalized and bounded within [-1,1].

'XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

Values represent the mean of variable for each couple subject / activity.

* subjectid : 
Id of the subject (from 1 to 30).

* activitylabel : 
Label of the activity : WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING.

* timeBodyAccelerationMeanX / timeBodyAccelerationMeanY /timeBodyAccelerationMeanZ : 
Mean of body acceleration signal.

* timeBodyAccelerationStandardDeviationX / timeBodyAccelerationStandardDeviationY / timeBodyAccelerationStandardDeviationZ : 
Standard Deviation of body acceleration signal.

* timeGravityAccelerationMeanX / timeGravityAccelerationMeanY / timeGravityAccelerationMeanZ : 
Mean of gravity acceleration signal.

* timeGravityAccelerationStandardDeviationX / timeGravityAccelerationStandardDeviationY / timeGravityAccelerationStandardDeviationZ : 
Standard Deviation of gravity acceleration signal.

* timeBodyAccelerationJerkMeanX / timeBodyAccelerationJerkMeanY / timeBodyAccelerationJerkMeanZ : 
Mean of body acceleration signal derivation (Jerk signal).

* timeBodyAccelerationJerkStandardDeviationX / timeBodyAccelerationJerkStandardDeviationY / timeBodyAccelerationJerkStandardDeviationZ : 
Standard Deviation of body acceleration signal derivation (Jerk signal).

* timeBodyGyroscopeMeanX / timeBodyGyroscopeMeanY / timeBodyGyroscopeMeanZ : 
Mean of body velocity signal.

* timeBodyGyroscopeStandardDeviationX / timeBodyGyroscopeStandardDeviationY / timeBodyGyroscopeStandardDeviationZ : 
Standard Deviation of body velocity signal.

* timeBodyGyroscopeJerkMeanX / timeBodyGyroscopeJerkMeanY / timeBodyGyroscopeJerkMeanZ : 
Mean of body velocity signal derivation (Jerk signal).

* timeBodyGyroscopeJerkStandardDeviationX / timeBodyGyroscopeJerkStandardDeviationY / timeBodyGyroscopeJerkStandardDeviationZ : 
Standard Deviation of body velocity signal derivation (Jerk signal).

* timeBodyAccelerationMagnitudeMean : 
Mean of body acceleration magnitude.

* timeBodyAccelerationMagnitudeStandardDeviation : 
Standard Deviation of body acceleration magnitude.

* timeGravityAccelerationMagnitudeMean : 
Mean of gravity acceleration magnitude.

* timeGravityAccelerationMagnitudeStandardDeviation : 
Standard Deviation of gravity acceleration magnitude.

* timeBodyAccelerationJerkMagnitudeMean : 
Mean of body acceleration derivation magnitude.

* timeBodyAccelerationJerkMagnitudeStandardDeviation : 
Standard Deviation of body acceleration derivation magnitude.

* timeBodyGyroscopeMagnitudeMean : 
Mean of body velocity magnitude.

* timeBodyGyroscopeMagnitudeStandardDeviation : 
Standard Deviation of body velocity magnitude.

* timeBodyGyroscopeJerkMagnitudeMean : 
Mean of body velocity derivation magnitude.

* timeBodyGyroscopeJerkMagnitudeStandardDeviation : 
Standard Deviation of body velocity derivation magnitude.

* frequenceBodyAccelerationMeanX / frequenceBodyAccelerationMeanY / frequenceBodyAccelerationMeanZ : 
Mean of body acceleration frequence.

* frequenceBodyAccelerationStandardDeviationX / frequenceBodyAccelerationStandardDeviationY / frequenceBodyAccelerationStandardDeviationZ : 
Standard Deviation of body acceleration frequence.

* frequenceBodyAccelerationJerkMeanX / frequenceBodyAccelerationJerkMeanY / frequenceBodyAccelerationJerkMeanZ : 
Mean of body acceleration derivation frequence.

* frequenceBodyAccelerationJerkStandardDeviationX / frequenceBodyAccelerationJerkStandardDeviationY / frequenceBodyAccelerationJerkStandardDeviationZ : 
Standard Deviation of body acceleration derivation frequence.

* frequenceBodyGyroscopeMeanX / frequenceBodyGyroscopeMeanY / frequenceBodyGyroscopeMeanZ : 
Mean of body velocity frequence.

* frequenceBodyGyroscopeStandardDeviationX / frequenceBodyGyroscopeStandardDeviationY / frequenceBodyGyroscopeStandardDeviationZ : 
Standard Deviation of body velocity frequence.

* frequenceBodyAccelerationMagnitudeMean : 
Mean of body acceleration magnitude frequence.

* frequenceBodyAccelerationMagnitudeStandardDeviation : 
Standard Deviation of body acceleration magnitude frequence.

* frequenceBodyBodyAccelerationJerkMagnitudeMean : 
Mean of body acceleration derivation magnitude frequence.

* frequenceBodyBodyAccelerationJerkMagnitudeStandardDeviation : 
Standard Deviation of body acceleration derivation magnitude frequence.

* frequenceBodyBodyGyroscopeMagnitudeMean : 
Mean of body velocity magnitude frequence.

* frequenceBodyBodyGyroscopeMagnitudeStandardDeviation : 
Standard Deviation of body velocity magnitude frequence.

* frequenceBodyBodyGyroscopeJerkMagnitudeMean : 
Mean of body velocity derivation magnitude frequence.

* frequenceBodyBodyGyroscopeJerkMagnitudeStandardDeviation : 
Standard Deviation of body velocity derivation magnitude frequence.
