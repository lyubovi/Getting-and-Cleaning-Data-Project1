##
##    Getting and Cleaning Ddata - Programming Assignment
##

#  set current working directory 
setwd("C:/Coursera/Getting-and-Cleaning-Data-Project1")


#  data is unzipped and in the current working directory 

# Read variable names
var.names <- read.table(file="data/features.txt", col.names= c("position","variable"))

# Read activity factor labels
fact.labels <- read.table(file="data/activity_labels.txt", col.names= c("code","act.label"))


# Read training data
train <- read.table(file="data/train/X_train.txt", col.names=var.names$variable)

# Read test data
test <- read.table(file="data/test/X_test.txt", col.names=var.names$variable)


## 1. Merge the training and the test data sets to create one data set.
data <- rbind(test,train)
nrow(data) == nrow(train) + nrow(test) # perform check


## 2. Extract only the measurements on the mean and standard deviation for
# each measurement.

# get data columns with mean and standard deviation
cols <- grep(".*mean.*|.*std.*", tolower(names(data)))
# get data only for the columns we need
data <- data[, cols]

## 3. Use descriptive activity names to name the activities in the data set

# Read activity data for training and test data sets
train.act <- read.table(file="data/train/Y_train.txt", col.names= "activity")
test.act <- read.table(file="data/test/Y_test.txt", col.names= "activity")
# Read subject data for training data set
train.subj <- read.table(file="data/train/subject_train.txt", col.names="subject")
test.subj <- read.table(file="data/test/subject_test.txt", col.names="subject")

act <- rbind(test.act,train.act)
subj <- rbind(test.subj,train.subj)
data <- cbind(act, data, subj)

## 4. Appropriately labels the data set with descriptive variable names.
data <- merge(data, fact.labels, by.x= 'activity', by.y= 'code')

## 5. Create a second, independent tidy data set with the average of each
# variable for each activity and each subject. 

data1 <- data[, 2:ncol(data)]
tidy <- aggregate(data1, by=list(activity = data1$act.label, subject=data1$subject), mean)
cols <- ncol(tidy) - 2
tidy <- tidy[, 1:cols]


## Export new tidy data set
write.table(tidy, "tidy_data.txt", sep="\t")