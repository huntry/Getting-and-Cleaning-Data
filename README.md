## Data summary
68 columns
180 rows

## Purpose
This dataset contains the mean of 66 of the 561 variables found in the original dataset grouped by subject id and activity name.  The dataset
contains measurements taken from smartphones while 30 subjects performed each of 6 actions.

run_analysis.R creates a summarized view of the dataset found [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).
A full description of the variables used can be found [here](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

## Cleansing Method
* The original training data and test data were recombined to one large dataset.
* The names of the variables defined in features.txt were applied to the column names of the dataset
* The activities were merged in from y\_test.txt and y\_train.txt
* The activity names defined in activity_labels.txt were applied to the dataset based on their activity\_id

* All of the 561 original variables not involving a mean and standard deviation were removed, leaving only 66 variables
* The data was segregated into groups comprised of the subject and the activity
* The mean each variable for each group was calculated


## Dataset columns
Column 1 and 2 of the resulting dataset represent the group definition and columns 3 - 68 represent the mean of the original data for the group

* subject\_id             - from subject\_train.txt and subject_test.txt
* activity\_name          - from activity\_labels.txt which was joined to the value from y\_test.txt and y\_train.txt
* tBodyAcc-mean()-X       - each of the remaining variables contain the mean value for the group for this variable
* tBodyAcc-mean()-Y 
* tBodyAcc-mean()-Z 
* tBodyAcc-std()-X 
* tBodyAcc-std()-Y 
* tBodyAcc-std()-Z 
* tGravityAcc-mean()-X 
* tGravityAcc-mean()-Y 
* tGravityAcc-mean()-Z 
* tGravityAcc-std()-X 
* tGravityAcc-std()-Y 
* tGravityAcc-std()-Z 
* tBodyAccJerk-mean()-X 
* tBodyAccJerk-mean()-Y 
* tBodyAccJerk-mean()-Z 
* tBodyAccJerk-std()-X 
* tBodyAccJerk-std()-Y 
* tBodyAccJerk-std()-Z 
* tBodyGyro-mean()-X 
* tBodyGyro-mean()-Y 
* tBodyGyro-mean()-Z 
* tBodyGyro-std()-X 
* tBodyGyro-std()-Y 
* tBodyGyro-std()-Z 
* tBodyGyroJerk-mean()-X 
* tBodyGyroJerk-mean()-Y 
* tBodyGyroJerk-mean()-Z 
* tBodyGyroJerk-std()-X 
* tBodyGyroJerk-std()-Y 
* tBodyGyroJerk-std()-Z 
* tBodyAccMag-mean() 
* tBodyAccMag-std() 
* tGravityAccMag-mean() 
* tGravityAccMag-std() 
* tBodyAccJerkMag-mean() 
* tBodyAccJerkMag-std() 
* tBodyGyroMag-mean() 
* tBodyGyroMag-std() 
* tBodyGyroJerkMag-mean() 
* tBodyGyroJerkMag-std() 
* fBodyAcc-mean()-X 
* fBodyAcc-mean()-Y 
* fBodyAcc-mean()-Z 
* fBodyAcc-std()-X 
* fBodyAcc-std()-Y 
* fBodyAcc-std()-Z 
* fBodyAccJerk-mean()-X 
* fBodyAccJerk-mean()-Y 
* fBodyAccJerk-mean()-Z 
* fBodyAccJerk-std()-X 
* fBodyAccJerk-std()-Y 
* fBodyAccJerk-std()-Z 
* fBodyGyro-mean()-X 
* fBodyGyro-mean()-Y 
* fBodyGyro-mean()-Z 
* fBodyGyro-std()-X 
* fBodyGyro-std()-Y 
* fBodyGyro-std()-Z 
* fBodyAccMag-mean() 
* fBodyAccMag-std() 
* fBodyBodyAccJerkMag-mean() 
* fBodyBodyAccJerkMag-std() 
* fBodyBodyGyroMag-mean() 
* fBodyBodyGyroMag-std() 
* fBodyBodyGyroJerkMag-mean() 
* fBodyBodyGyroJerkMag-std()

Contents of the original codebook, for reference
==================================================================
Human Activity Recognition Using Smartphones Dataset
Version 1.0
==================================================================
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
==================================================================

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:
======================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

The dataset includes the following files:
=========================================

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

Notes: 
======
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

For more information about this dataset contact: activityrecognition@smartlab.ws

License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
