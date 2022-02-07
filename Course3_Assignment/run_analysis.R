# Read x, y, subject data in to df #############
x_test_df <- read.table("./UCI HAR Dataset/test/X_test.txt", header = FALSE)
y_test_df <- read.table("./UCI HAR Dataset/test/y_test.txt", header = FALSE)
subject_test_df <- read.table("./UCI HAR Dataset/test/subject_test.txt", header = FALSE)

x_train_df <- read.table("./UCI HAR Dataset/train/X_train.txt", header = FALSE)
y_train_df <- read.table("./UCI HAR Dataset/train/y_train.txt", header = FALSE)
subject_train_df <- read.table("./UCI HAR Dataset/train/subject_train.txt", header = FALSE)


#combine test and train data for x, y, subject
x_df <- rbind(x_test_df, x_train_df)
y_df <- rbind(y_test_df, y_train_df)
subject_df <- rbind(subject_test_df, subject_train_df)


#Get mean_df from x_df
mean_df <- data.frame(x_df$V1, x_df$V2, x_df$V3, x_df$V41, x_df$V42, x_df$V43, x_df$V81, x_df$V82, x_df$V83, x_df$V121, x_df$V122, x_df$V123, x_df$V161, x_df$V162, x_df$V163, x_df$V201, x_df$V214, x_df$V227, x_df$V240, x_df$V253, x_df$V266, x_df$V267, x_df$V268, x_df$V345, x_df$V346, x_df$V347, x_df$V424, x_df$V425, x_df$V426, x_df$V503, x_df$V516, x_df$V529, x_df$V542)

#get meanfreq_df from x_df
meanfreq_df <- data.frame(x_df$V294, x_df$V295, x_df$V296, x_df$V373, x_df$V374, x_df$V375, x_df$V452, x_df$V453, x_df$V454, x_df$V513, x_df$V526, x_df$V539, x_df$V552)

#get std_df from x_df
std_df <- data.frame(x_df$V4, x_df$V5, x_df$V6, x_df$V44, x_df$V45, x_df$V46, x_df$V84, x_df$V85, x_df$V86, x_df$V124, x_df$V125, x_df$V126, x_df$V164, x_df$V165, x_df$V166, x_df$V202, x_df$V215, x_df$V228, x_df$V241, x_df$V254, x_df$V269, x_df$V270, x_df$V271, x_df$V348, x_df$V349, x_df$V350, x_df$V427, x_df$V428, x_df$V429, x_df$V504, x_df$V517, x_df$V530, x_df$V543)


#add names to tables

# Read features into features_df
features_df <- read.table("./UCI HAR Dataset/features.txt", header = FALSE)

#Assign names to x_df
names(x_df) <- features_df$V2

#Name Confusion removal
names(x_df)[303:316] <- paste(names(x_df)[303:316], rep("-X", length(names(x_df)[303:316])), sep = "")
names(x_df)[317:330] <- paste(names(x_df)[317:330], rep("-Y", length(names(x_df)[317:330])), sep = "")
names(x_df)[331:344] <- paste(names(x_df)[331:344], rep("-Z", length(names(x_df)[331:344])), sep = "")

names(x_df)[382:395] <- paste(names(x_df)[382:395], rep("-X", length(names(x_df)[382:395])), sep = "")
names(x_df)[396:409] <- paste(names(x_df)[396:409], rep("-Y", length(names(x_df)[396:409])), sep = "")
names(x_df)[410:423] <- paste(names(x_df)[410:423], rep("-Z", length(names(x_df)[410:423])), sep = "")

names(x_df)[461:474] <- paste(names(x_df)[461:474], rep("-X", length(names(x_df)[461:474])), sep = "")
names(x_df)[475:488] <- paste(names(x_df)[475:488], rep("-Y", length(names(x_df)[475:488])), sep = "")
names(x_df)[489:502] <- paste(names(x_df)[489:502], rep("-Z", length(names(x_df)[489:502])), sep = "")

#Populating activity labels in y_df and adding Labels to y
for(i in 1:length(y_df$V1)){y_df$V1[i] <- activity_labels_df[y_df$V1[i], 2]}
names(y_df) <- "labels"

#adding name to subject_df
names(subject_df) <- "subject_id"

##############################################################

#read inertial signals for test
body_acc_x_test_df <- read.table("./UCI HAR Dataset/test/Inertial Signals/body_acc_x_test.txt", header = FALSE)
body_acc_y_test_df <- read.table("./UCI HAR Dataset/test/Inertial Signals/body_acc_y_test.txt", header = FALSE)
body_acc_z_test_df <- read.table("./UCI HAR Dataset/test/Inertial Signals/body_acc_z_test.txt", header = FALSE)

body_gyro_x_test_df <- read.table("./UCI HAR Dataset/test/Inertial Signals/body_gyro_x_test.txt", header = FALSE)
body_gyro_y_test_df <- read.table("./UCI HAR Dataset/test/Inertial Signals/body_gyro_y_test.txt", header = FALSE)
body_gyro_z_test_df <- read.table("./UCI HAR Dataset/test/Inertial Signals/body_gyro_z_test.txt", header = FALSE)

total_acc_x_test_df <- read.table("./UCI HAR Dataset/test/Inertial Signals/total_acc_x_test.txt", header = FALSE)
total_acc_y_test_df <- read.table("./UCI HAR Dataset/test/Inertial Signals/total_acc_y_test.txt", header = FALSE)
total_acc_z_test_df <- read.table("./UCI HAR Dataset/test/Inertial Signals/total_acc_z_test.txt", header = FALSE)


#read interial signals for test
body_acc_x_train_df <- read.table("./UCI HAR Dataset/train/Inertial Signals/body_acc_x_train.txt", header = FALSE)
body_acc_y_train_df <- read.table("./UCI HAR Dataset/train/Inertial Signals/body_acc_y_train.txt", header = FALSE)
body_acc_z_train_df <- read.table("./UCI HAR Dataset/train/Inertial Signals/body_acc_z_train.txt", header = FALSE)

body_gyro_x_train_df <- read.table("./UCI HAR Dataset/train/Inertial Signals/body_gyro_x_train.txt", header = FALSE)
body_gyro_y_train_df <- read.table("./UCI HAR Dataset/train/Inertial Signals/body_gyro_y_train.txt", header = FALSE)
body_gyro_z_train_df <- read.table("./UCI HAR Dataset/train/Inertial Signals/body_gyro_z_train.txt", header = FALSE)

total_acc_x_train_df <- read.table("./UCI HAR Dataset/train/Inertial Signals/total_acc_x_train.txt", header = FALSE)
total_acc_y_train_df <- read.table("./UCI HAR Dataset/train/Inertial Signals/total_acc_y_train.txt", header = FALSE)
total_acc_z_train_df <- read.table("./UCI HAR Dataset/train/Inertial Signals/total_acc_z_train.txt", header = FALSE)

#Combine test and train date frames
body_acc_x_df <- rbind(body_acc_x_test_df, body_acc_x_train_df)
body_acc_y_df <- rbind(body_acc_y_test_df, body_acc_y_train_df)
body_acc_z_df <- rbind(body_acc_z_test_df, body_acc_z_train_df)

body_gyro_x_df <- rbind(body_gyro_x_test_df, body_gyro_x_train_df)
body_gyro_y_df <- rbind(body_gyro_y_test_df, body_gyro_y_train_df)
body_gyro_z_df <- rbind(body_gyro_z_test_df, body_gyro_z_train_df)

total_acc_x_df <- rbind(total_acc_x_test_df, total_acc_x_train_df)
total_acc_y_df <- rbind(total_acc_y_test_df, total_acc_y_train_df)
total_acc_z_df <- rbind(total_acc_z_test_df, total_acc_z_train_df)

#create unique names for combined body_acc_xyz, body_gyro_xyz, total_acc_xyz

names(body_acc_x_df) <- paste(rep("body_acc_x", length(names(body_acc_x_df))), rep("_", length(names(body_acc_x_df))), names(body_acc_x_df), sep = "")
names(body_acc_y_df) <- paste(rep("body_acc_y", length(names(body_acc_y_df))), rep("_", length(names(body_acc_y_df))), names(body_acc_y_df), sep = "")
names(body_acc_z_df) <- paste(rep("body_acc_z", length(names(body_acc_z_df))), rep("_", length(names(body_acc_z_df))), names(body_acc_z_df), sep = "")

names(body_gyro_x_df) <- paste(rep("body_gyro_x", length(names(body_gyro_x_df))), rep("_", length(names(body_gyro_x_df))), names(body_gyro_x_df), sep = "")
names(body_gyro_y_df) <- paste(rep("body_gyro_y", length(names(body_gyro_y_df))), rep("_", length(names(body_gyro_y_df))), names(body_gyro_y_df), sep = "")
names(body_gyro_z_df) <- paste(rep("body_gyro_z", length(names(body_gyro_z_df))), rep("_", length(names(body_gyro_z_df))), names(body_gyro_z_df), sep = "")

names(total_acc_x_df) <- paste(rep("total_acc_x", length(names(total_acc_x_df))), rep("_", length(names(total_acc_x_df))), names(total_acc_x_df), sep = "")
names(total_acc_y_df) <- paste(rep("total_acc_y", length(names(total_acc_y_df))), rep("_", length(names(total_acc_y_df))), names(total_acc_y_df), sep = "")
names(total_acc_z_df) <- paste(rep("total_acc_z", length(names(total_acc_z_df))), rep("_", length(names(total_acc_z_df))), names(total_acc_z_df), sep = "")

#######################################################################

#creats one_df

one_df <- cbind(subject_df, x_df, y_df, body_acc_x_df, body_acc_y_df, body_acc_z_df, body_gyro_x_df, body_gyro_y_df, body_gyro_z_df, total_acc_x_df, total_acc_y_df, total_acc_z_df)

######################################################################

#Extract mean and std measurements
library(dplyr)
df <- tbl_df(one_df)
df <- select(df, 1, 563, 564:1715)

df1 <- df %>% group_by(subject_id, labels) %>% summarize(mean(body_acc_x_V1:body_acc_x_V128), mean(body_acc_y_V1:body_acc_y_V128), mean(body_acc_z_V1:body_acc_z_V128), mean(body_gyro_x_V1:body_gyro_x_V128), mean(body_gyro_y_V1:body_gyro_y_V128), mean(body_gyro_z_V1:body_gyro_z_V128), mean(total_acc_x_V1:total_acc_x_V128), mean(total_acc_y_V1:total_acc_y_V128), mean(total_acc_z_V1:total_acc_z_V128))

###############################