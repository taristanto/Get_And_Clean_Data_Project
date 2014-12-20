run_analysis <- function(){
	## Load the files in to table
	ytest <- read.table("UCI_HAR_Dataset/test/Y_test.txt")
	xtest <- read.table("UCI_HAR_Dataset/test/X_test.txt")
	subjtest <- read.table("UCI_HAR_Dataset/test/subject_test.txt")
	ytrain <- read.table("UCI_HAR_Dataset/train/Y_train.txt")
	xtrain <- read.table("UCI_HAR_Dataset/train/X_train.txt")
	subjtrain <- read.table("UCI_HAR_Dataset/train/subject_train.txt")
	features <- read.table("UCI_HAR_Dataset/features.txt")
	act1 <- read.table("UCI_HAR_Dataset/activity_labels.txt")
	names(act1) <- c("actID","Activity")

	## (1) Merge the train and test data into single datatypes
	subj <- rbind(subjtest,subjtrain)
	y <- rbind(ytest,ytrain)
	x <- rbind(xtest,xtrain)
	tbl1 <- data.frame(subj, y)
	names(tbl1) <- c("Subject","actID")
	names(x) <- as.character(features[,2])
	
	## (2) Extract the mean and standard deviation measurements only
	xmean <- x[grep("mean",features[,2])]
	xstd <- x[grep("std",features[,2])]

	## (1) Combine the columns and 
	tbl2 <- cbind(tbl1,xmean,xstd)

	## (3) Associate the Descriptive Activity names to Activity codes
	final_table <- merge(act1,tbl2,by.x="actID",All.x = TRUE)

	##(4) Appropriately labels the data set with descriptive variable names.
	varCols <- colnames(final_table)
	for (i in 1:length(varCols)) 
	{
  		varCols[i] = gsub("\\()","",varCols[i])
  		varCols[i] = gsub("^(t)","time",varCols[i])
  		varCols[i] = gsub("^(f)","freq",varCols[i])
  		varCols[i] = gsub("[Ss]td","StdDev",varCols[i])
  		varCols[i] = gsub("[Mm]ean","Mean",varCols[i])
  		varCols[i] = gsub("([Gg]ravity)","Gravity",varCols[i])
  		varCols[i] = gsub("([Bb]ody[Bb]ody|[Bb]ody)","Body",varCols[i])
  		varCols[i] = gsub("[Gg]yro","Gyro",varCols[i])
		varCols[i] = gsub("[Ff]req","Frequency",varCols[i])
  		varCols[i] = gsub("AccMag","AccMagnitude",varCols[i])
  		varCols[i] = gsub("([Bb]odyaccjerkmag)","BodyAccJerkMagnitude",varCols[i])
  		varCols[i] = gsub("JerkMag","JerkMagnitude",varCols[i])
  		varCols[i] = gsub("GyroMag","GyroMagnitude",varCols[i])
		varCols[i] = gsub("[Aa]cc","Acceleration",varCols[i])
	}
	colnames(final_table) <- varCols

	##(5) New table with the average of each Variable for each Activity and each Subject
	fntbl2 <- melt(final_table,id.vars = c("Activity","Subject"), measure.vars = varCols[4:82])
	AvgFinalTable <- dcast(fntbl2, Activity + Subject ~ variable, mean)

	##Write the output files for new average data
	write.table(AvgFinalTable,"UCI_HAR_Dataset/average_final_table.txt", row.name=FALSE)
}

