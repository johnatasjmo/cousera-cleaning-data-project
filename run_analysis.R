# create data folder and download file named dataset
if (!file.exists("./data")) {
    dir.create("./data")
}
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl, destfile = "./data/dataset.zip")

# Unzip dataSet to /data directory
unzip(zipfile = "./data/dataset.zip", exdir = "./data")

# Reading trainings tables one each
x_train <- read.table("./data/UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./data/UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("./data/UCI HAR Dataset/train/subject_train.txt")

# Reading testing tables one each
x_test <- read.table("./data/UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./data/UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("./data/UCI HAR Dataset/test/subject_test.txt")

# Reading feature vector
features <- read.table("./data/UCI HAR Dataset/features.txt")

# Reading activity labels variable
activity_labels = read.table("./data/UCI HAR Dataset/activity_labels.txt")

# assign column names to train
colnames(x_train) <- features[, 2]
colnames(y_train) <- "activity_id"
colnames(subject_train) <- "subject_id"

# asign column names to test
colnames(x_test) <- features[, 2]
colnames(y_test) <- "activity_id"
colnames(subject_test) <- "subject_id"

# asign column names to activityLabels (V1 and V2)
colnames(activityLabels) <- c("activity_id", "activity_type")

# merging data merge data train
merge_train <- cbind(y_train, subject_train, x_train)
merge_test <- cbind(y_test, subject_test, x_test)
combined <- rbind(merge_train, merge_test)

# read colNames
combined_colnames <- colnames(combined)

# create vector for mean and stdDev
mean_and_std <- (grepl("activity_id", combined_colnames) | grepl("subject_id", combined_colnames) |
    grepl("mean..", combined_colnames) | grepl("std..", combined_colnames))

# subset of combined
set_of_mean_and_std <- combined[, mean_and_std == TRUE]

# using descriptive activity name
set_with_activity_names <- merge(set_of_mean_and_std, activity_labels, by = "activity_id",
    all.x = TRUE)

# making second tidy dataset
tidy_set2 <- aggregate(. ~ subject_id + activity_id, set_with_activity_names, mean)
tidy_set2 <- tidy_set2[order(tidy_set2$subject_id, tidy_set2$activity_id), ]

# Write to txt file
write.table(tidy_set2, "tidy_set2.txt", row.name = FALSE)
