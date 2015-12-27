#run_alanysis.R 

#Set up the R environment
if (!require("data.table")) {
  install.packages("data.table")
}

if (!require("plyr")) {
  install.packages("plyr")
}

require("data.table")
require("plyr")
setwd("C:/Users/RNRECKLEY/Downloads/coursera/datascience/cleaningdata/project")

###
#1 Read in the raw data and merge test and traing data sets
###
#Read each data file/
features <- read.table("UCI HAR Dataset/features.txt")
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt")

x_train <- read.table("UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")

x_test <- read.table("UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")

#Merge the raw data sets  
x_data <- rbind(x_train, x_test)
y_data <- rbind(y_train, y_test)
subject_data <- rbind(subject_train, subject_test)

###
#2 Extract mean and standard deviations from measurements raw data.
###
measurements_to_extract <- grep("-(mean|std)\\(\\)", features[, 2])
x_data <- x_data[, measurements_to_extract]

###
#3 Use descriptive activity names to name the activities in the data set.
###
#Apply activity labels to the data sets
y_data[,1] = activity_labels[y_data[,1], 2]
names(y_data) <- "activity"

##
#4 Appropriately label the data set with descriptive variable names.
##
#Apply desciprtive labels to measurements and subjects
names(x_data) <- features[measurements_to_extract, 2]
names(subject_data) <- "subjectid"

#Create the full data set
full_data <- cbind(subject_data, y_data, x_data)

#Clean up the  variable names
names(full_data) <- gsub('\\(|\\)|\\.|\\-',"",names(full_data))
names(full_data) <- tolower(names(full_data))

###
#5 Create the tidy data set that contains the average for each activity and
# subject.
###

#Calculate the average of each variable for each activity and subject.
tidy_data <- ddply(full_data, c("subjectid","activity"), numcolwise(mean))

# Write the resulant data set to a file
write.table(tidy_data, "tidy.txt", row.names = FALSE)
