## run_analysis.R takes two data sets and creates a tidy data set with
## descriptive statistics for each variable

## 1. Merge training and test sets
labels <- read.table("./features.txt")
activity <- read.table("./activity_labels.txt")
colnames(activity) <- c("activity_ID", "activity_name")

test_subject <- read.table("./test/subject_test.txt")
colnames(test_subject) <- "subject"
test_x <- read.table("./test/x_test.txt")
colnames(test_x) <- labels$V2
test_y <- read.table("./test/y_test.txt")
colnames(test_y) <- "activity_ID"
test <- cbind(test_subject, test_y, test_x)

train_subject <- read.table("./train/subject_train.txt")
colnames(train_subject) <- "subject"
train_x <- read.table("./train/x_train.txt")
colnames(train_x) <- labels$V2
train_y <- read.table("./train/y_train.txt")
colnames(train_y) <- "activity_ID"
train <- cbind(train_subject, train_y, train_x)

data <- rbind(test, train)

## 2. Extract mean and standard deviation of each measurement

filter <- grep("mean()|std()",colnames(data))
data <- data[,c(1,2,filter)]



## 3. Create second independant tidy data set with the average of each variable 
##    for each activity and subject

data <- split(data,list(data$subject,data$activity_ID))
data <- lapply(data,colMeans)
data <- do.call(rbind, data)
data<- merge(activity,data, by.x = "activity_ID", by.y = "activity_ID")
data <- data[,c(3,2,4:82)]

## 4. Write table to file named "Activity_Summary."
write.table(data,"Activiy_Summary.txt",row.names = FALSE)
