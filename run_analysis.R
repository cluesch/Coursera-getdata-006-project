## Source file
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
path <- "UCI HAR Dataset"
file <- paste0(path, ".zip")

# Get the data
if (!file.exists(file)) {
  download.file(url, file, method="curl")
}
# Unpack
unzip(file)

# import the data
train_x <-read.table(paste0(path, "/train/X_train.txt")
train_y <-read.table(paste0(path, "/train/Y_train.txt")
test_x <-read.table(paste0(path, "/test/X_test.txt")
test_y <-read.table(paste0(path, "/test/Y_test.txt")