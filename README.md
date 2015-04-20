# GetClean
Getting and cleaning data, course project


This repository contains the R code and the code book for the Coursera course "Getting and Cleaning data".
The dataset used in the project is "Human Activity Recognition Using Smartphones".

The file CodeBook describes the variables and the data.

The file run_analysis.R contains the code for the 5 steps of analysis. 

The first step is to get the original data and to merge them properly.

The second step is to take only the columns with the mean and standard deviation measures (determined by their names). Then these columns obtain the correct names which have to be taken from the file "features.txt".

The third step is update the values in 'y_data' 
we take the activity names and IDs from activity_labels.txt and they are substituted in the dataset.

The output of the 5th step is called "data.txt".
