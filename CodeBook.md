#Information about the dataset

The original dataset is described in http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones.

The zip-file which we had to download includes the following files:

'README.txt': contains the general information about all the data in the zip-file

'features_info.txt': contains the general information about the features.

'features.txt': contains the full list of all features.

'activity_labels.txt': contains the list of activity labels.

'X_train.txt': contains training set.

'y_train.txt': contains training labels.

'X_test.txt': contains test set.

'y_test.txt': contains test labels.

'subject_train.txt'/'subject_test.txt': contains the subjects who performed the activity for each window sample. 

'total_acc_x_train.txt'/'total_acc_x_test.txt', 'total_acc_y_train.txt'/'total_acc_y_test.txt', 'total_acc_z_train.txt'/'total_acc_z_test.txt': contains the acceleration signals from the smartphone accelerometer in 'g' units, for x-, y- and z-axis.

'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting 
the gravity from the total acceleration.

'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope 
for each window sample. The units are radians/second.

    x_train, y_train, x_test, y_test, subject_train and subject_test contain the data from the downloaded files.
    x_data, y_data and subject_data merge the previous datasets to further analysis.
    features contains the correct names for the x_data dataset, which are applied to the column names stored in mean_and_std_features, a numeric vector used to extract the desired data.
    A similar approach is taken with activity names through the activities variable.
    all_data merges x_data, y_data and subject_data in a big dataset.
    Finally, averages_data contains the relevant averages which will be later stored in a .txt file. ddply() from the plyr package is used to apply colMeans() and ease the development.

Status API Training Shop Blog About
© 2015 GitHub, Inc. Terms Privacy Security Contact
