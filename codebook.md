`x_train` reads X_train.txt `y_train` reads y_train.txt subject_train reads subject_train.txt

`x_test` reads X_test.txt `y_test` reads y_test.txt subject_test reads subject_test.txt

`features` reads features.txt

`activity_labels` reads activity_labels.txt

`merge_train` merge `y_train`, `subject_train`, `x_train` by column `merge_test` merges `y_test`, `subject_test`, `x_test` by column combined merges `merge_train`, `merge_test` by row

`combined_colnames` shows combined names of `combined`

`mean_and_std` is a vector of all mean and std labels `set_of_mean_and_std` is a subset of all mean and stdDev label columns `set_with_activity_names` merges std dev and activity names

`tidy_set2` aggregates by subject ID and names mean and orders it by subject and activity ID tidy_set2.txt is a table of `tidy_set2` .
