# Set up base directory with source data
BASE_DIR <- 'UCI HAR Dataset'

# Download the data archive and unpack it
if (!dir.exists(BASE_DIR)) {
    dataset_url <- 'https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip'
    download.file(dataset_url, 'dataset.zip', 'curl')
    unzip('dataset.zip')
    unlink('dataset.zip')
}

# Load test data into R data frames
test_subjects <- read.table(file.path(BASE_DIR, 'test', 'subject_test.txt'))
test_activities <- read.table(file.path(BASE_DIR, 'test', 'y_test.txt'))
test_data <- read.table(file.path(BASE_DIR, 'test', 'X_test.txt'), colClasses = 'numeric')

# Load train data into R data frames
train_subjects <- read.table(file.path(BASE_DIR, 'train', 'subject_train.txt'))
train_activities <- read.table(file.path(BASE_DIR, 'train', 'y_train.txt'))
train_data <- read.table(file.path(BASE_DIR, 'train', 'X_train.txt'), colClasses = 'numeric')

# Combine features according with their subjects and activities
test_data <- cbind(test_subjects, test_activities, test_data)
train_data <- cbind(train_subjects, train_activities, train_data)

# Combine test and train datasets
data <- rbind(test_data, train_data)

# Name variables in the dataset
feature_names <- read.table(file.path(BASE_DIR, 'features.txt'), row.names = 1, col.names = c('num', 'name'), stringsAsFactors = FALSE)
names(data) <- c('subject', 'activity', feature_names$name)

# Subset only features with 'mean' or 'std' in their names
data <- data[, c(1:2, grep('mean|std', names(data)))]

# Use descriptive activity names
activities <- read.table(file.path(BASE_DIR, 'activity_labels.txt'), row.names = 1, col.names = c('num', 'name'), stringsAsFactors = FALSE)
data$activity <- factor(activities[data$activity, 'name'])

# Calculate averages of each variable for each activity and each subject
aggregated_data <- aggregate(. ~ subject + activity, data = data, mean)
