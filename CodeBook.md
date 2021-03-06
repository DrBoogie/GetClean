#Information about the dataset

The original dataset is described in http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones.

# Description of the original data

The zip-file which we had to download includes the following files:

'README.txt': contains the general information about all the data in the zip-file

'features_info.txt': contains the general information about the features.

'features.txt': contains the full list of all features.

'activity_labels.txt': contains the list of activity labels.

'x_train.txt': contains training set.

'y_train.txt': contains training labels.

'x_test.txt': contains test set.

'y_test.txt': contains test labels.

'subject_train.txt'/'subject_test.txt': contains the subjects who performed the activity for each window sample. 

'total_acc_x_train.txt'/'total_acc_x_test.txt', 'total_acc_y_train.txt'/'total_acc_y_test.txt', 'total_acc_z_train.txt'/'total_acc_z_test.txt': contains the acceleration signals from the smartphone accelerometer in 'g' units, for x-, y- and z-axis.

'body_acc_x_train.txt'/'body_acc_x_test.txt', 'body_acc_y_train.txt'/'body_acc_y_test.txt', 'body_acc_z_train.txt'/'body_acc_z_test.txt': contains the acceleration signals obtained by subtracting 
the gravity from the total acceleration, for x-, y- and z-axis.

'body_gyro_x_train.txt'/'body_gyro_x_test.txt', 'body_gyro_y_train.txt'/'body_gyro_y_test.txt', 'body_gyro_z_train.txt'/'body_gyro_z_test.txt': contains the angular velocity vectors measured by the gyroscope 
for each window sample, for x-, y- and z-axis. 

# Description of the created data 

'x_data': 'x_train' and 'x_test' together (added through rbind)

'y_data': 'y_train' and 'y_test' together (added through rbind)

'subject_data': 'subject_train' and 'subject_test' together (added through rbind)

'mean_and_std_features': contains all variable names with 'mean' or 'std' within

'all_data': 'x_data', 'y_data' and 'subject_data' merged together (through cbind)

'data': the end data, tidy data set, created with write.table().
