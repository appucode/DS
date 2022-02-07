#The following are different steps followed for the implementation

1. Test and Train data sets for X, y, and Subject are loaded in dataframes
2. Test and Train data sets are added to form X, y, and Subject
3. Mean, MeanFreq, Std colums from X are sliced
4. Features are extracted
5. Features are assigned as names to X
6. Some of the names of the columns are same and hence duplicates. Duplicates are removed by attaching X,Y,Z as appropriate
7. The activity names are populated in y. The name for column is given
8. The column name for subject is added
9. Inertial signal data sets for test and train are read into data frames
10. The test and trained intertial datasets are combined to form unified datasets
11. Unique colums names are added for body_acc_xyz, body_gyro_xyz, and total_acc_xyz so that when are combined in one data frame, so that all the column names of combined data frame are different
12. one_df is the unified data frame created by combining subject_df, x_df, y_df, body_acc_x_df, body_acc_y_df, body_acc_z_df, body_gyro_x_df, body_gyro_y_df, body_gyro_z_df, total_acc_x_df, total_acc_y_df, and total_acc_z_df
13. one_df is loaded in table data frame for analysis
14. The subject, y$labels, body_acc_xyz, body_gyro_xyz, and total_acc_xyz are selected; this is stored in the same data fareme
15. Grouped by subject, labels; later means are calculated for body_acc_xyz, body_gyro_xyz, and total_acc_xyz


#This is the end of the Readme.txt