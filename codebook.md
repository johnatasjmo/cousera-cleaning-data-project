`x_train` reads X_train.txt `y_train` reads y_train.txt subject_train reads subject_train.txt

`x_test` reads X_test.txt `y_test` reads y_test.txt subject_test reads subject_test.txt

`features` reads features.txt

`activity_labels` reads activity_labels.txt

`merge_train` merge `y_train`, `subject_train`, `x_train` by column `merge_test` merges `y_test`, `subject_test`, `x_test` by column combined merges `merge_train`, `merge_test` by row

`combined_colnames` shows combined names of `combined`

`mean_and_std` is a vector of all mean and std labels `set_of_mean_and_std` is a subset of all mean and stdDev label columns `set_with_activity_names` merges std dev and activity names

`tidy_set2` aggregates by subject ID and names mean and orders it by subject and activity ID tidy_set2.txt is a table of `tidy_set2` .

# All variables of tidy_set2

`subject_id`
`activity_id`
`tBodyAcc-mean()-X`
`tBodyAcc-mean()-Y`
`tBodyAcc-mean()-Z`
`tBodyAcc-std()-X`
`tBodyAcc-std()-Y`
`tBodyAcc-std()-Z`
`tGravityAcc-mean()-X`
`tGravityAcc-mean()-Y`
`tGravityAcc-mean()-Z`
`tGravityAcc-std()-X`
`tGravityAcc-std()-Y`
`tGravityAcc-std()-Z`
`tBodyAccJerk-mean()-X`
`tBodyAccJerk-mean()-Y`
`tBodyAccJerk-mean()-Z`
`tBodyAccJerk-std()-X`
`tBodyAccJerk-std()-Y`
`tBodyAccJerk-std()-Z`
`tBodyGyro-mean()-X`
`tBodyGyro-mean()-Y`
`tBodyGyro-mean()-Z`
`tBodyGyro-std()-X`
`tBodyGyro-std()-Y`
`tBodyGyro-std()-Z`
`tBodyGyroJerk-mean()-X`
`tBodyGyroJerk-mean()-Y`
`tBodyGyroJerk-mean()-Z`
`tBodyGyroJerk-std()-X`
`tBodyGyroJerk-std()-Y`
`tBodyGyroJerk-std()-Z`
`tBodyAccMag-mean()`
`tBodyAccMag-std()`
`tGravityAccMag-mean()`
`tGravityAccMag-std()`
`tBodyAccJerkMag-mean()`
`tBodyAccJerkMag-std()`
`tBodyGyroMag-mean()`
`tBodyGyroMag-std()`
`tBodyGyroJerkMag-mean()`
`tBodyGyroJerkMag-std()`
`fBodyAcc-mean()-X`
`fBodyAcc-mean()-Y`
`fBodyAcc-mean()-Z`
`fBodyAcc-std()-X`
`fBodyAcc-std()-Y`
`fBodyAcc-std()-Z`
`fBodyAcc-meanFreq()-X`
`fBodyAcc-meanFreq()-Y`
`fBodyAcc-meanFreq()-Z`
`fBodyAccJerk-mean()-X`
`fBodyAccJerk-mean()-Y`
`fBodyAccJerk-mean()-Z`
`fBodyAccJerk-std()-X`
`fBodyAccJerk-std()-Y`
`fBodyAccJerk-std()-Z`
`fBodyAccJerk-meanFreq()-X`
`fBodyAccJerk-meanFreq()-Y`
`fBodyAccJerk-meanFreq()-Z`
`fBodyGyro-mean()-X`
`fBodyGyro-mean()-Y`
`fBodyGyro-mean()-Z`
`fBodyGyro-std()-X`
`fBodyGyro-std()-Y`
`fBodyGyro-std()-Z`
`fBodyGyro-meanFreq()-X`
`fBodyGyro-meanFreq()-Y`
`fBodyGyro-meanFreq()-Z`
`fBodyAccMag-mean()`
`fBodyAccMag-std()`
`fBodyAccMag-meanFreq()`
`fBodyBodyAccJerkMag-mean()`
`fBodyBodyAccJerkMag-std()`
`fBodyBodyAccJerkMag-meanFreq()`
`fBodyBodyGyroMag-mean()`
`fBodyBodyGyroMag-std()`
`fBodyBodyGyroMag-meanFreq()`
`fBodyBodyGyroJerkMag-mean()`
`fBodyBodyGyroJerkMag-std()`
`fBodyBodyGyroJerkMag-meanFreq()`
`activity_label`
