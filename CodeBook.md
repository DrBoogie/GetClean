#Information about the dataset

The original dataset is described in http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones.

This dataset includes the following files:

'README.txt'

'features_info.txt': Shows information about the variables used on the feature vector.

'features.txt': List of all features.

'activity_labels.txt': Links the class labels with their activity name.

'X_train.txt': Training set.

'y_train.txt': Training labels.

'X_test.txt': Test set.

'y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent.

'subject_train.txt': Each row identifies the subject who performed the activity for each window sample. 
Its range is from 1 to 30.

'total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis 
in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 
'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis.

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
