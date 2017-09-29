# files
`codebook.md` contains a list of variables and units
`README.md `list script on high level, files and Sources
`run_analysis.R` is an R programming script that executes all script activities
`tidy_set2` is the output file after processing

# scripts
Script `run_analysis.md` performs the following activities

* It creates a data folder, downloads the file and unzip. Reads training and testing labels.
* Reading feature vector
* Reading activity labels variable
* Assign column names to train
* Asign column names to test
* Asign column names to activityLabels (V1 and V2)
* Merging data merge data train
* Combines all tables
* Read column names
* Create vector for mean and stdDev
* Subset of combined
* Using descriptive activity name with merge
* Makes a second data set
* Write to txt file

# Sources
Background information
<http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones>
Source:
<https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip>
