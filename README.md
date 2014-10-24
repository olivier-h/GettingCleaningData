The original raw data is available at this [location](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

The files under folders *Inertial Signals* were not used, only the formatted data was relevant :

	UCI HAR Dataset/activity_labels.txt
	UCI HAR Dataset/features.txt
	UCI HAR Dataset/test/X_test.txt
	UCI HAR Dataset/test/y_test.txt
	UCI HAR Dataset/test/subject_test.txt
	UCI HAR Dataset/train/X_train.txt
	UCI HAR Dataset/train/y_train.txt
	UCI HAR Dataset/train/subject_train.txt

The script *run_analysis.R* transforms the raw data into a tidy dataset saved in the file *tdataset.txt*.
The script takes the raw files from the repertory *UCI HAR Dataset*, so this must be in the working directory.
The script needs the *dplyr* package and its dependencies to be ran.

1. The files *X_test.txt* and *X_train.txt* rows were binded into a measurements dataset.

2. Only the measurements on the mean and standard deviation for each measurement have to be extracted.
So the file *feature.txt* was loaded into a features dataset to select only columns whose name contains "mean()" or "std()".
Then these columns were filtered from the dataset containing the measurements.

3. The files *y_test.txt* and *y_train.txt* rows were binded into an activity dataset.

4. The files *subject_test.txt* and *subject_train.txt* rows were binded into a subject dataset.

5. The subject, activity and measurements datasets were then binded into a complete dataset with colums for subject id , activity id and measurements.

6. The file *activity_labels.txt* was loaded into a dataset wich was merged with the complete dataset by activity id.
At this step, the complete dataset was containing columns for subject id , activity id, activity label and measurements.
The redundant activity id column could then be removed.

7. The measurement names for the selected columns were extracted from the features dataset and modified to remove special characters and make them human readable.
Abbreviations have been made longer and some upper cases have been conserved to be more comprehensible.
The modified columns names were associated to correspondant dataset columns.

8. The dataset was grouped by subject id and activity label to calculate the mean of each variable for each group.

9. Finally, the dataset was written in the file *tdataset.txt*.
To read the file : *readdataset = read.table("tdataset.txt", header=TRUE)*.