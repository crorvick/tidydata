#!/usr/bin/env Rscript

library(dplyr)


# Read a table directly from the Human Activity Recognition data set
# archive.  If the archive is not found in the current directory it
# will be downloaded from the UCI Machine Learning Repository.
#
# Arguments
#
#   path    path to the table file within the ZIP archive.  The
#           common "UCI HAR Dataset/" base directory will be prepended
#           if not already specified.
#
#   ...     optional arguments passed to read.table()
#
# Value
#
#   A data frame containing the the table data.
#
read.har.table <- function(path, ...) {
	name <- "UCI HAR Dataset"
	zip.file <- sprintf("%s.zip", name)
	zip.url <- sprintf("http://archive.ics.uci.edu/ml/machine-learning-databases/00240/%s", zip.file)

	# download the file if we don't yet have it locally
	if (!file.exists(zip.file))
		download.file(URLencode(zip.url), zip.file)

	# prepend common "UCI HAR Dataset/" directory to path if needed
	if (grepl(sprintf("^%s/", name), path))
		path <- sprintf("%s/%s", name, path)

	# open file from ZIP archive and read in table data
	con <- unz(zip.file, sprintf("%s/%s", name, path))
	read.table(con, comment.char = "", ...)
}

# read in labels for activities and features
activities <- read.har.table("activity_labels.txt",
                             col.names = c("activity.id", "activity"))
features <- read.har.table("features.txt", col.names = c("column", "name"))

# define a factor for each of the data sets in the archive
groups <- factor(c("train", "test"))


# Load a Human Activity Recognition data set (i.e., either the "train"
# or "test" set.)
#
# Arguments
#
#   group   the groups factor identifying which data set to load
#
# Value
#
#   A data frame containing the data set for the requested group.
#
read.har.dataset <- function(group) {

	get.path <- function(s) sprintf("%s/%s_%s.txt", group, s, group)

	clean.feature.name <- function(s) {
		s <- gsub("\\(\\)", "", s)        # remove "()"
		s <- gsub("BodyBody", "Body", s)  # fix typos
	}

	# read in data set
	data <- read.har.table(get.path("X"),
	                       col.names = clean.feature.name(features$name),
	                       colClasses = "numeric")

	# additional data to bind include with each observation:
	# group ("train" or "test), subject, and activity
	grp <- rep(group, nrow(data))
	sbj <- read.har.table(get.path("subject"))[,1]
	act <- read.har.table(get.path("y"))[,1]

	d <- data.frame(group = grp, subject = sbj, activity.id = act, data)

	# map activity codes to the descriptive activiy factor
	d <- merge(d, activities, by = "activity.id")
	d$activity.id <- NULL

	d
}

# read in both ("train" and "test") data sets and combine into one
har <- rbind_all(lapply(groups, read.har.dataset))

# strip out the columns we don't care about
mean.or.std.columns <- function(names) {
	mean.or.std <- grepl("\\.(mean|std)", names)
	meanFreq <- grepl("meanFreq", names)
	which(mean.or.std & !meanFreq)
}
har <- select(har, group, subject, activity, mean.or.std.columns(names(har)))

# calculate the mean for each feature, grouping by activity and subject
har.means <- har %.%
	select(-group) %.%
	group_by(activity, subject) %.%
	summarise_each(funs(mean))

write.table(har.means, "HAR_summary.txt", row.names = FALSE)
