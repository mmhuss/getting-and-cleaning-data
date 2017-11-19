
setwd("./UCI HAR Dataset")

## 1: Read in all files needed to create the new dataset

train <- read.table("./train/X_train.txt")
test <- read.table("./test/X_test.txt")
features <- read.table("features.txt")
subject_train <- read.table("./train/subject_train.txt")
subject_test <- read.table("./test/subject_test.txt")
y_test <- read.table("./test/y_test.txt")
y_train <- read.table("./train/y_train.txt")
activity_labels <- read.table("./activity_labels.txt")


## 2: Merge the training and testing sets with the corresponding y values and 
##    subject IDs and finally combine both sets into one data set.

names(train) <- features$V2
names(test) <- features$V2

train <- cbind(y_train, subject_train, train)
names(train)[1:2] <- c("activity", "subject")

test <- cbind(y_test, subject_test, test)
names(test)[1:2] <- c("activity", "subject")

dataset <- rbind(train, test)

## 3. Extracts only the measurements on the mean and standard deviation 
##    for each measurement; since this was not further specified in the instructions, 
##    the mean frequency and the vectors obtained by averaging the signals in 
##    a signal window sample were not included

toMatch <- c("activity", "subject", "\\<mean\\>", "\\<std\\>")
matches <- unique (grep(paste(toMatch,collapse="|"), 
                        names(dataset)))

dataset_sub <- dataset[,matches]

## 4. Uses descriptive activity names to name the activities in the data set.

library(stringr)

old <- as.character(1:6)
new <- as.character(activity_labels$V2)

names(new) <- old
dataset_sub$activity <- str_replace_all(dataset_sub$activity, new)


## 5: Label the data set with descriptive variable names; 
##    Notice that the abbreviations used in the features.txt file were kept
##    to not make the variable names too long, so only minor changes were made 

names(dataset_sub) <- gsub("[\\(\\)]", "", names(dataset_sub))
names(dataset_sub) <- gsub("BodyBody", "Body", names(dataset_sub))


## 6. From the data set in step 4, creates a second, independent tidy data set 
##    with the average of each variable for each activity and each subject.

data_mean <- dataset_sub %>% 
    group_by(activity, subject) %>%
    summarise_all(funs(mean))

## 7. Write the data set into a file called "tidy_data.txt".

write.table(data_mean, file = "./tidy_data.txt", row.names = FALSE )


