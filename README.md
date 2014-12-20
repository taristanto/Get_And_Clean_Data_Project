#Getting and Cleaning Data Project

##Project Requirements

Create a function that will:
	1. Merges the training and the test sets to create one data set.
  
	2. Extracts only the measurements on the mean and standard deviation for each measurement. 
  
	3. Uses descriptive activity names to name the activities in the data set.
  
	4. Appropriately labels the data set with descriptive variable names. 
  
	5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

##Function Specifications:

###Name
run_analysis.R

###Input
None

###Output
average_final_table.txt

###Required Input files 
The following files and folders have to be located in UCI_HAR_Dataset folder in the WorkSpace folder:
* /test/Y_test.txt
* /test/X_test.txt 
* /test/subject_test.txt 
* /train/Y_train.txt 
* /train/X_train.txt 
* /train/subject_train.txt 
* features.txt 
* activity_labels.txt 

###Process Steps
* Using the read.table function load all the listed file above
* Combine the test and train data using the rbind function
* Using names funtions label the columns (variables)
* Extract the Columns containing "Mean" and "Std" using grep function
* Combine all the columns as single data.frame
* Name Activities using Descriptive Activity name by merging data table to the feature table
* Change the column names to more appropriate naming.
* Crete a separate Tidy table with the average of each Variable for each Activity and each Subject using the melt and dcast command. 
  	 


