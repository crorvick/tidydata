Data Dictionary
===============

The data set in `HAR_summary.txt` is derived from the
[Human Activity Recognition Using Smartphonse Data Set](
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).  From the `README.txt` file for this data set:

> The experiments have been carried out with a group of 30 volunteers
> within an age bracket of 19-48 years. Each person performed six
> activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING,
> STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the
> waist. Using its embedded accelerometer and gyroscope, we captured
> 3-axial linear acceleration and 3-axial angular velocity at a constant
> rate of 50Hz. The experiments have been video-recorded to label the
> data manually. The obtained dataset has been randomly partitioned into
> two sets, where 70% of the volunteers was selected for generating the
> training data and 30% the test data. 
> 
> The sensor signals (accelerometer and gyroscope) were pre-processed by
>  applying noise filters and then sampled in fixed-width sliding
> windows of 2.56 sec and 50 % overlap (128 readings/window). The sensor
> acceleration signal, which has gravi tational and body motion
> components, was separated using a Butterworth low-pass filter into
> body acceleration and gravity. The gravitational force is assumed to
> have only low frequency components, therefore a filter with 0.3 Hz
> cutoff frequency was used. From each window, a vector of features was
> obtained by calculating variables from the time and frequency domain. 

Additional information is provided in the `features_info.txt` file,
including the following:

> The features selected for this database come from the accelerometer
> and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time
> domain signals (prefix 't' to denote time) were captured at a constant
> rate of 50 Hz. Then they were filtered using a median filter and a 3rd
> order low pass Butterworth filter with a corner frequency of 20 Hz to
> remove noise. Similarly, the acceleration signal was then separated
> into body and gravity acceleration signals (tBodyAcc-XYZ and
> tGravityAcc-XYZ) using another low pass Butterworth filter with a
> corner frequency of 0.3 Hz. 
> 
> Subsequently, the body linear acceleration and angular velocity were
> derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and
> tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional
> signals were calculated using the Euclidean norm (tBodyAccMag,
> tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 
> 
> Finally a Fast Fourier Transform (FFT) was applied to some of these
> signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ,
> fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to
> indicate frequency domain signals).

From these signals, a number of variables are estimated including
a mean and standard deviation.  The table contained in `HAR_summary.txt`
summarizes these two estimated variables by calculating their mean value
for each activity and subject.

All numeric data is unitless, as the underlying data is normalized to
a range of -1 to 1 as noted in the `README.txt` file from the original
data set.

activity
--------
Activity of daily living

* WALKING
* WALKING_UPSTAIRS
* WALKING_DOWNSTAIRS
* SITTING
* STANDING
* LAYING`

subject
-------
Subject identifier (1 - 30)

avg.tBodyAcc.mean.X
-------------------
Average of the X-axis body acceleration means

avg.tBodyAcc.mean.Y
-------------------
Average of the Y-axis body acceleration means

avg.tBodyAcc.mean.Z
-------------------
Average of the Z-axis body acceleration means

avg.tBodyAcc.std.X
------------------
Average of the X-axis body acceleration standard deviations

avg.tBodyAcc.std.Y
------------------
Average of the Y-axis body acceleration standard deviations

avg.tBodyAcc.std.Z
------------------
Average of the Z-axis body acceleration standard deviations

avg.tGravityAcc.mean.X
-------------------
Average of the X-axis gravity acceleration means

avg.tGravityAcc.mean.Y
-------------------
Average of the Y-axis gravity acceleration means

avg.tGravityAcc.mean.Z
-------------------
Average of the Z-axis gravity acceleration means

avg.tGravityAcc.std.X
------------------
Average of the X-axis gravity acceleration standard deviations

avg.tGravityAcc.std.Y
------------------
Average of the Y-axis gravity acceleration standard deviations

avg.tGravityAcc.std.Z
------------------
Average of the Z-axis gravity acceleration standard deviations

avg.tBodyAccJerk.mean.X
-------------------
Average of the X-axis body acceleration jerk means

avg.tBodyAccJerk.mean.Y
-------------------
Average of the Y-axis body acceleration jerk means

avg.tBodyAccJerk.mean.Z
-------------------
Average of the Z-axis body acceleration jerk means

avg.tBodyAccJerk.std.X
------------------
Average of the X-axis body acceleration jerk standard deviations

avg.tBodyAccJerk.std.Y
------------------
Average of the Y-axis body acceleration jerk standard deviations

avg.tBodyAccJerk.std.Z
------------------
Average of the Z-axis body acceleration jerk standard deviations

avg.tBodyGyro.mean.X
--------------------
Average of the X-axis velocity means

avg.tBodyGyro.mean.Y
--------------------
Average of the Y-axis velocity means

avg.tBodyGyro.mean.Z
--------------------
Average of the Z-axis velocity means

avg.tBodyGyro.std.X
-------------------
Average of the X-axis velocity standard deviations

avg.tBodyGyro.std.Y
-------------------
Average of the Y-axis velocity standard deviations

avg.tBodyGyro.std.Z
-------------------
Average of the Z-axis velocity standard deviations

avg.tBodyGyroJerk.mean.X
------------------------
Average of the X-axis velocity jerk means

avg.tBodyGyroJerk.mean.Y
------------------------
Average of the Y-axis velocity jerk means

avg.tBodyGyroJerk.mean.Z
------------------------
Average of the Z-axis velocity jerk means

avg.tBodyGyroJerk.std.X
-----------------------
Average of the X-axis velocity jerk standard deviations

avg.tBodyGyroJerk.std.Y
-----------------------
Average of the Y-axis velocity jerk standard deviations

avg.tBodyGyroJerk.std.Z
-----------------------
Average of the Z-axis velocity jerk standard deviations

avg.tBodyAccMag.mean
--------------------
Average of the body acceleration magnitude means

avg.tBodyAccMag.std
-------------------
Average of the body acceleration magnitude standard deviations

avg.tGravityAccMag.mean
-----------------------
Average of the gravity acceleration magnitude means

avg.tGravityAccMag.std
----------------------
Average of the gravity acceleration magnitude standard deviations

avg.tBodyAccJerkMag.mean
------------------------
Average of the body acceleration jerk magnitude means

avg.tBodyAccJerkMag.std
-----------------------
Average of the body acceleration jerk magnitude standard deviations

avg.tBodyGyroMag.mean
---------------------
Average of the body velocity magnitude means

avg.tBodyGyroMag.std
--------------------
Average of the body velocity magnitude standard deviations

avg.tBodyGyroJerkMag.mean
-------------------------
Average of the body velocity jerk magnitude means

avg.tBodyGyroJerkMag.std
------------------------
Average of the body velocity jerk magnitude standard deviations

avg.fBodyAcc.mean.X
-------------------

avg.fBodyAcc.mean.Y
-------------------

avg.fBodyAcc.mean.Z
-------------------

avg.fBodyAcc.std.X
------------------

avg.fBodyAcc.std.Y
------------------

avg.fBodyAcc.std.Z
------------------

avg.fBodyAccJerk.mean.X
-----------------------

avg.fBodyAccJerk.mean.Y
-----------------------

avg.fBodyAccJerk.mean.Z
-----------------------

avg.fBodyAccJerk.std.X
----------------------

avg.fBodyAccJerk.std.Y
----------------------

avg.fBodyAccJerk.std.Z
----------------------

avg.fBodyGyro.mean.X
--------------------

avg.fBodyGyro.mean.Y
--------------------

avg.fBodyGyro.mean.Z
--------------------

avg.fBodyGyro.std.X
-------------------

avg.fBodyGyro.std.Y
-------------------

avg.fBodyGyro.std.Z
-------------------

avg.fBodyAccMag.mean
--------------------

avg.fBodyAccMag.std
-------------------

avg.fBodyAccJerkMag.mean
------------------------

avg.fBodyAccJerkMag.std
-----------------------

avg.fBodyGyroMag.mean
---------------------

avg.fBodyGyroMag.std
--------------------

avg.fBodyGyroJerkMag.mean
-------------------------

avg.fBodyGyroJerkMag.std
------------------------

