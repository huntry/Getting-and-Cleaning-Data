library(dplyr)

#########
#
## Part 1 - extract the data into a single data frame containing subject_id, activity_id, activity_name, 
#                 feature_name, feature_id, and all data measurements
#########

#read the data files from disk and append the action
x_train <- tbl_df(read.table("train/x_train.txt",header = FALSE)) %>% 
     mutate(action="train")
x_test <- tbl_df(read.table("test/x_test.txt",header = FALSE)) %>% 
     mutate(action="test")
#combine the two data files and apply the feature names from the feature file
data_file <- rbind(x_train,x_test)
features <- tbl_df(read.table("features.txt", header=FALSE,col.names = c("col_index","feature_name")))
names(data_file) <- c(as.character(features$feature_name),"action")



#read the activity files from disk
y_train <- tbl_df(read.table("train/y_train.txt",header = FALSE, col.names = "activity_id"))
y_test <- tbl_df(read.table("test/y_test.txt",header = FALSE, col.names = "activity_id"))
#combine the data files
activity_file <- rbind(y_train,y_test)


#read the subject data files from disk
subject_train <- tbl_df(read.table("train/subject_train.txt",header = FALSE,col.names = "subject_id"))
subject_test <- tbl_df(read.table("test/subject_test.txt",header = FALSE,col.names = "subject_id"))
subject_file <- rbind(subject_train,subject_test)


#combine the result of those three blocks into a single dataframe
data <- cbind(subject_file,activity_file)
data <- cbind(data,data_file)

#########
#
## Part 2 - filter the data into a single data frame containing subject_id, activity_id, activity_name, 
#                 feature_name, feature_id, and 33 mean measurements and 33 sdtdev measurements
#########

#filter the data to only get the mean and standard deviation columnns
filtered_data_cols <- c("subject_id","action","activity_id",as.vector(features$feature_name[grep(features$feature_name,pattern = "std|mean\\(")]))
filtered_data <- data[,filtered_data_cols]

#apply the activity labels
activity_labels <- tbl_df(read.table("activity_labels.txt",header=FALSE,col.names = c("activity_id","activity_name")))
filtered_data <- merge(filtered_data,activity_labels,by="activity_id")

#########
#
## Part 3 - summarize the filtered data
#                 
#########

#remove unwanted columns
summary_data <- tbl_df(subset(filtered_data,select=-c(action,activity_id)))

summary_data <- summary_data %>%
     group_by(subject_id,activity_name) %>%
     arrange(subject_id,activity_name) %>%
     summarize_each( funs(mean)) 
     

# write the summarized dataset to disk
write.table( summary_data,file="dataset.txt",row.names = FALSE)

#return the summarized dataset
summary_data