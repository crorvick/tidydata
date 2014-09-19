Overview
========

The [Human Activity Recognition Using Smartphonse Data Set](
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
) contains measurements of subjects performing activities of daily
living obtained with a waist-mounted smart phone.  The data set is
available as a [ZIP archive](
http://archive.ics.uci.edu/ml/machine-learning-databases/00240/UCI HAR Dataset.zip
) which spreads the data across many files.  The `run_analysis.R`
script pulls the data together into a single table and then provides a
summary of the data set by calculating the mean across a subset of the
variables, grouped by activity and subject.

Procedure
=========

Cleanup
-------

Before we can begin analysis, the data must be consolidated into a
single [tidy](http://vita.had.co.nz/papers/tidy-data.pdf) data set.  The
following graphic nicely depicts how the files from the ZIP archive fit
together:

![HAR data set structure](https://coursera-forum-screenshots.s3.amazonaws.com/ab/a2776024af11e4a69d5576f8bc8459/Slide2.png)

We first define `read.har.table(path)` for conveniently loading the
components of the data set.  This function looks for the ZIP archive in
the current directory and, if not present, downloads it from the UCI web
site.  The file found at `path` within the archive is then loaded and
returned as a data data frame.  Because all files are found under the
common `UCI HAR Dataset/` subdirectory, this will be prepended to `path`
automatically if not already specified.

We then use `read.har.table` to load descriptive labels for the
activities performed and the measurements (aka, features) recorded.
Additionally, we define a factor for indicating which group an
observation is from (i.e., "test" or "train".)

Because observations are split into groups, we next define
`read.har.dataset(group)`.  This function takes one of the values from
the `groups` factor we just defined and composes the data from the
this group into a tidy data set.  This entails the following steps:

1. Load the measurements from the `X_<group>.txt` file into a data
   frame, applying the previously-loaded feature names to the columns.

2. Bind the group, subject, and activity values to each observation.
   The group is constant for the data frame under construction, but is
   useful to include for when data frames for each group are combined.

3. Map the activity identifier to the previously-loaded descriptive
   factor value.

Finally, we call `read.har.dataset()` for each of the two groups and
combine them into a single data set.  As prescribed by the assignment,
columns containing the mean and standard deviation for each measurement
are extracted and the remaining columns are dropped.

Analysis
--------

With our tidy data set complete, we can easily perform our analysis.
The goal is to provide the mean value for each of the variables grouped
by activity and subject.  We use the `dplyr` package to facilitate this,
first dropping the unneeded `group` and then generating the desired
summary data.  Next, we rename the column names of the new data frame to
better reflect their values.  Finally, this summary data is written as
a table to the file `HAR_summary.txt` in the current directory.
