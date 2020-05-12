## This script will create two tidy data sets of the measurments
## You have to have `dplyr`, `data.table`
## The dataset must be extracted in a directory with the name `data`
## You should have `UCI HAR Dataset` directory inside `data`

library(dplyr)
library(data.table)
source('extract_DT.R')

# Reading feature list
feature_info <- fread('data/UCI HAR Dataset/features.txt')

# Read activity list
activities <- fread('data/UCI HAR Dataset/activity_labels.txt',sep=' ')$V2


# Get features containing only mean or std
feature_info <- filter(feature_info,grepl('mean|std',V2))

# Read training set and extract only mean and std columns
# and attach column names
# Go to `extract_DT.R` for more details

# Combine final Data table
DT <- bind_rows(extract_DT('train',feature_info,activities),
                      extract_DT('test',feature_info,activities))

# Write data table to `data/output`
write.table(DT,'data/output/first-tidy.txt',row.names = F)

# Group and summarize
write.table(group_by(DT,subject,activity) %>% summarize_all(list(mean)),
            'data/output/second-tidy.txt',row.names = F)


