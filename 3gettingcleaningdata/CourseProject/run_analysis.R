activity_labels <- read.table("activity_labels.txt")
activity_labels <- subset(activity_labels, select = V2)
colnames(activity_labels) <- "activity_labels"

features <- read.table("features.txt")
features <- subset(features, select = V2)
colnames(features) <- "features"

subject_test <- read.table("subject_test.txt")
subject_train <- read.table("subject_train.txt")
