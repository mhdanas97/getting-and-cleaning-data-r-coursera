# "Getting and Cleaning Data" Course Project
This repo contains R scripts of the "Getting and Cleaning Data" Course Project

# Running the script
## to run the script first you have to:

1. Change your working directory to the same directory as the `run_analysis.R` script.
2. Add a directory `data` in your working directory.
3. Extract the dataset in `data`
4. Run the `run_analysis.R` script using `source('run_analysis.R')`

# The script does the following:
1. Gets feature names containg `mean` or `std` and store them in a `data.frame`.
2. Gets activity names and stores them in a vector.
3. For each of the training and test set, it gets the appropriate measure and adds the activity name and subject to each observation.
4. Gives the resulting data frame appropriate variable names.
5. Combines the to resulting data frames.
6. Write the two required tidy data sets into `data/output/first-tidy.txt` and `data/output/second-tidy.txt`

# Variable names:
From the file in `features_info.txt` contained in the original dataset:

>The features selected for this database come from the accelerometer and gyroscope 3-axial raw >signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were >captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd >order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, 
>the acceleration signal was then separated into body and gravity acceleration signals >(tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner >frequency of 0.3 Hz. 
>
>Subsequently, the body linear acceleration and angular velocity were derived in time to obtain 
>Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these >three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, >tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 
>
>Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing >fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, >fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 
>
>These signals were used to estimate variables of the feature vector for each pattern:  
>'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
>
> * tBodyAcc-XYZ
> * tGravityAcc-XYZ
> * tBodyAccJerk-XYZ
> * tBodyGyro-XYZ
> * tBodyGyroJerk-XYZ
> * tBodyAccMag
> * tGravityAccMag
> * tBodyAccJerkMag
> * tBodyGyroMag
> * tBodyGyroJerkMag
> * fBodyAcc-XYZ
> * fBodyAccJerk-XYZ
> * fBodyGyro-XYZ
> * fBodyAccMag
> * fBodyAccJerkMag
> * fBodyGyroMag
> * fBodyGyroJerkMag


> mean(): Mean value
> std(): Standard deviation
> meanFreq(): Weighted average of the frequency components to obtain a mean frequency


In addition I add the `subject` which includes the number of the `subject` and `activity` where I store the activity name