## Data summary
* 68 columns
* 180 rows

## Cleansing Method
* The original training data and test data were recombined to one large dataset.
* The names of the variables defined in features.txt were applied to the column names of the dataset
* The activities were merged in from y\_test.txt and y\_train.txt
* The activity names defined in activity_labels.txt were applied to the dataset based on their activity\_id

* All of the 561 original variables not involving a mean and standard deviation were removed, leaving only 66 variables
* The data was segregated into groups comprised of the subject and the activity
* The mean for each variable for each group was calculated


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
