# Cleaning the environment
rm(list=ls(all=TRUE))

# Importing the dplyr library
library(dplyr)

# Loading test dataset in 3 data frames
# xtest contains the measurements
xtest = read.table("UCI HAR Dataset\\test\\X_test.txt")
# ytest contains the correspondant activities
ytest = read.table("UCI HAR Dataset\\test\\y_test.txt")
# stest contains the correspondant subjects
stest = read.table("UCI HAR Dataset\\test\\subject_test.txt")

# Loading train dataset in 3 data frames
# xtrain contains the measurements
xtrain = read.table("UCI HAR Dataset\\train\\X_train.txt")
# ytrain contains the correspondant activities
ytrain = read.table("UCI HAR Dataset\\train\\y_train.txt")
# strain contains the correspondant subjects
strain = read.table("UCI HAR Dataset\\train\\subject_train.txt")

# Binding the rows for the test and train measurements
xdataset = rbind(xtest, xtrain)

# Loading the features (column names for the measurements dataset)
features = read.table("UCI HAR Dataset\\features.txt", stringsAsFactors=FALSE)

# Filtering the columns whose name contains "mean()" or "std()"
columnIds = grep("mean\\(\\)|std\\(\\)", features[, 2])

# Filtering the dataset with the correspondant columns
xdataset = xdataset[, columnIds]

# Binding the rows for the test and train activities
ydataset = rbind(ytest, ytrain)
names(ydataset) = "activityid"

# Binding the rows for the test and train subjects
sdataset = rbind(stest, strain)
names(sdataset) = "subjectid"

# Binding the columns for the subjects, activities and measurements
syxdataset = cbind(sdataset, ydataset, xdataset)

# Loading the activity labels
ldataset = read.table("UCI HAR Dataset\\activity_labels.txt", stringsAsFactors=FALSE)
names(ldataset) = c("activityid", "activitylabel")

# Merging the dataset with the activity labels
dataset = merge(ldataset, syxdataset, by.x="activityid", by.y="activityid")

# Removing the column for actvity id (redundant with the activity label)
dataset = select(dataset, -activityid)

# Defining column names of the dataset
columnNames = features[columnIds, 2]

# Renaming the features for naming colums dataset
# Removing "-"
columnNames = gsub("-", "", columnNames)
# Removing ","
columnNames = gsub(",", "", columnNames)
# Removing "("
columnNames = gsub("\\(", "", columnNames)
# Removing ")"
columnNames = gsub("\\)", "", columnNames)
# Replacing "mean" by "Mean" to be human readable
columnNames = gsub("mean", "Mean", columnNames)
# Replacing "std" by "StandardDeviation" to be human readable
columnNames = gsub("std", "StandardDeviation", columnNames)
# Replacing "Acc" by "Acceleration" to be human readable
columnNames = gsub("Acc", "Acceleration", columnNames)
# Replacing "Gyro" by "Gyroscope" to be human readable
columnNames = gsub("Gyro", "Gyroscope", columnNames)
# Replacing "Mag" by "Magnitude" to be human readable
columnNames = gsub("Mag", "Magnitude", columnNames)
# Replacing "t" by "time" to be human readable
columnNames = gsub("^t", "time", columnNames)
# Replacing "f" by "frequence" to be human readable
columnNames = gsub("^f", "frequence", columnNames)

# Naming the colums for the measurements (except 2 first columns already named)
names(dataset)[3:(length(columnNames)+2)] = columnNames

# Grouping the dataset by subject and activity
gdataset = group_by(dataset, subjectid, activitylabel)

# Calculating the mean for each column of measurement
tdataset = summarise_each(gdataset, funs(mean))

# Writing the dataset in a file
write.table(tdataset, "tdataset.txt", row.names=FALSE)

# Reading the dataset from the file
#readdataset = read.table("tdataset.txt", header=TRUE)
