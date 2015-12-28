# Getting and Cleaning Data Project codebook

## Data Source
 The data used for this project was obtained from the "Human Activity Recognition Using Smartphones Data Set" found on the University California Irvine Machine Learning Repository web site.[1] 

## Data Set Information
  The data set was created from a set of experiments conducted by a group of 30 volunteers within the age bracket of 19-48 years. Each person in the group performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) while wearing a smartphone (Samsung Galaxy S II) on their waist. Using the embedded accelerometer and gyroscope of the smartphone, 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz were captured for each participant. The experiments were video-recorded in order to label the data manually after an activity was performed. The dataset obtained from the experiments has been randomly partitioned into two sets, where 70% of the volunteers were selected for generating the training data and 30% the test data.[2]

## Data Description
The features selected, for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. The acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

 Next, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). The magnitude for each of these three-dimensional signals was calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally, a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals).

Additional vectors were obtained by averaging the signals in a signal window sample. These are used on the angle() variable: gravityMean, tBodyAccMean, tBodyAccJerkMean, tBodyGyroMean and tBodyGyroJerkMean.

The set of variables that were estimated from these signals are:

    mean(): Mean value
    std(): Standard deviation
    mad(): Median absolute deviation
    max(): Largest value in array
    min(): Smallest value in array
    sma(): Signal magnitude area
    energy(): Energy measure. Sum of the squares divided by the number of values.
    iqr(): Interquartile range
    entropy(): Signal entropy
    arCoeff(): Autoregression coefficients with Burg order equal to 4
    correlation(): Correlation coefficient between two signals
    maxInds(): Index of the frequency component with largest magnitude
    meanFreq(): Weighted average of the frequency components to obtain a mean frequency
    skewness(): Skewness of the frequency domain signal
    kurtosis(): Kurtosis of the frequency domain signal
    bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
    angle(): Angle between some vectors.

No unit of measures is reported as all features were normalized and bounded within [-1,1]


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



