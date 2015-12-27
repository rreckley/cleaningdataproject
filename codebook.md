# Getting and Cleaning Data Project codebook

## Data Source
The data used for this project was obtained from the "Human Activity Recognition Using Smartphones Data Set" found on the University California Irvine Machine Learning Repository web site.[1] 

## Data Set Information
The data set was created from a set of experiments conducted by a group of 30 volunteers within the age bracket of 19-48 years. Each person in the group performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) while wearing a smartphone (Samsung Galaxy S II) on their waist. Using the embedded accelerometer and gyroscope of the smartphone, 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz were captured for each participant. The experiments were video-recorded in order to label the data manually after an activity was performed. The dataset obtained from the experiments has been randomly partitioned into two sets, where 70% of the volunteers were selected for generating the training data and 30% the test data.[2]



## Data Transformations
 * The file containing the activity_labels was read into a data set.
 * The file continaing the features (sensor observatons) was read into a data set.
 * The files containing  the subjects, labels and sensor data for the  test and training trials were read into  individual data sets. 
 * The test and training data sets for the subject, labels and sensor data were then cobmined to proudce a single data set for each   
 * The mean and standard deviations were extracted from the combind sensor data set.
 * Proper column names were applied to the each data set.
 * The combined subject, labels and (sensor) data data sets were cobmined inot a single tidy data set.
 * The average of each variable for each activity and each subject was calculated and stored in the tidy data set.'
 

### References
[1] http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

[2] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012



