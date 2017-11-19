This is the codebook for the coursera getting and cleaning data course project.

## Data

The dataset for this project was created by cleaning and transforming the UCI Human Activity Recognition (HAR) data containing measurements from the accelerometer and gyroscope of a Samsung Galaxy S II Smartphone worn by a test person around the waist performing six different activities. The goal of the experiment, which was conducted by 30 persons, was to distinguish between the movements using the sensor data alone. 

The cleaned and transformed data can be found in the file *tidy_data.txt*. It was created by merging the training and testing data of the original dataset. Then only the measurements on the mean and the standard deviation of each observation were extracted and finally the average of each variable for each activity and subject was computed.   


## Variables

The observations are grouped by the performed activity and the subject ID:

* `activity`: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
* `subject`: 1 - 30

Only the measurements on the mean (`mean`) and standard deviation (`std`) were included. The mean frequency and the additional vectors obtained by averaging the signals in a signal window sample are not part of the cleaned dataset. 

The accelerometer (`acc`) and gyroscope (`gyro`) measurements are 3-axial (`XYZ`) and are available as time domain signals (`t`) and frequency domain signals (`f`). The acceleration signals were further divided into body (`Body`) and gravity (`Gravity`) acceleration signals.
The body linear acceleration and angular velocity were derived in time to obtain Jerk signals (`Jerk`) and the magnitude of these three-dimensional signals was calculated using the Euclidean norm (`Mag`).

The following variables were obtained for each direction (`XYZ`) and domain (`t` und `f`):

* `BodyAcc`:
* `BodyAccJerk:`
* `BodyGyro`:
* `BodyGyroJerk`:

Each direction, only time domain:

* `GravityAcc`: 

Both domains, no directions:

* `BodyAccMag`:
* `BodyAccJerkMag`:
* `BodyGyroMag`:
* `BodyGyroJerkMag`:

No directions, only time domain:

* `GravityAccMag`:

## Transformations



3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md.

GitHub contains a code book that modifies and updates the available codebooks with the data to indicate all the variables and summaries calculated, along with units, and any other relevant information.
