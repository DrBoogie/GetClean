library(plyr)

# Step 1

# get the original data 

x_train <- read.table("C:\\Users\\D_und_V\\Documents\\MATLAB\\GetClean\\X_train.txt")
y_train <- read.table("C:\\Users\\D_und_V\\Documents\\MATLAB\\GetClean\\y_train.txt")

x_test <- read.table("C:\\Users\\D_und_V\\Documents\\MATLAB\\GetClean\\X_test.txt")
y_test <- read.table("C:\\Users\\D_und_V\\Documents\\MATLAB\\GetClean\\y_test.txt")

subject_train <- read.table("C:\\Users\\D_und_V\\Documents\\MATLAB\\GetClean\\subject_train.txt")
subject_test <- read.table("C:\\Users\\D_und_V\\Documents\\MATLAB\\GetClean\\subject_test.txt")

features <- read.table("C:\\Users\\D_und_V\\Documents\\MATLAB\\GetClean\\features.txt")
activities <- read.table("C:\\Users\\D_und_V\\Documents\\MATLAB\\GetClean\\activity_labels.txt")

# create 'x_data' and 'y_data' through the merge of corresponding original data
x_data <- rbind(x_train, x_test)
y_data <- rbind(y_train, y_test)

# create 'subject_data' through the merge of corresponding original data
subject_data <- rbind(subject_train, subject_test)

# Step 2

# get columns from 'features' which have mean or std in their names
mean_and_std_features <- grep("-(mean|std)\\(\\)", features[, 2])

# only the needed columns
x_data <- x_data[, mean_and_std_features]

# change the column names
names(x_data) <- features[mean_and_std_features, 2]

# Step 3


# update values in 'y_data'
y_data[, 1] <- activities[y_data[, 1], 2]

# column names
names(y_data) <- "activity"

# Step 4


# column names
names(subject_data) <- "subject"

# all the data together
all_data <- cbind(x_data, y_data, subject_data)


# Step 5

# Create end data file

data <- ddply(all_data, .(subject, activity), function(x) colMeans(x[, 1:66]))

write.table(data, "C:\\Users\\D_und_V\\Documents\\MATLAB\\GetClean\\data.txt", row.name=FALSE)
