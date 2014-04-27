# 1. Merges the training and the test sets to create one data set.

trainX <- read.table("train/X_train.txt")
testX <- read.table("test/X_test.txt")
X <- rbind(trainX, testX)

trainS <- read.table("train/subject_train.txt")
testS <- read.table("test/subject_test.txt")
S <- rbind(trainS, testS)

trainY <- read.table("train/y_train.txt")
testY <- read.table("test/y_test.txt")
Y <- rbind(trainY, testY)

# 2. Extracts only the measurements on the mean and standard deviation for each measurement. 

features <- read.table("features.txt")
needed_features <- grep("-mean\\(\\)|-std\\(\\)", features[, 2])
X <- X[, needed_features]
names(X) <- features[needed_features, 2]
names(X) <- gsub("\\(|\\)", "", names(X))
names(X) <- tolower(names(X)) 

# 3. Uses descriptive activity names to name the activities in the data set.

needed_activities <- read.table("activity_labels.txt")
needed_activities[, 2] = gsub("_", "", tolower(as.character(needed_activities[, 2])))
Y[,1] = needed_activities[Y[,1], 2]
names(Y) <- "activity"

# 4. Appropriately labels the data set with descriptive activity names.

names(S) <- "subject"
cleaned_dataset <- cbind(S, Y, X)
write.table(cleaned_dataset, "merged_clean_data.txt")

# 5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

New_Subjects = unique(S)[,1]
Len_Subjects = length(unique(S)[,1])
Len_Activities = length(activities[,1])
numCols = dim(cleaned)[2]
result = cleaned[1:(Len_Subjects*Len_Activities), ]

row = 1
for (s in 1:Len_Subjects) {
  for (a in 1:Len_Activities) {
    result[row, 1] = New_Subjects[s]
    result[row, 2] = activities[a, 2]
    tmp <- cleaned[cleaned$subject==s & cleaned$activity==activities[a, 2], ]
    result[row, 3:numCols] <- colMeans(tmp[, 3:numCols])
    row = row+1
  }
}
# The tidy data set
write.table(result, "data_set_with_the_averages.txt")
tidy_data <- read.table("data_set_with_the_averages.txt")
head(tidy_data)


