#######################
### Library loading
#######################
library(plyr)
library(dplyr)
library(ggplot2)
library(data.table)

##################
## Load dataset
################
activityDataset <- read.csv(file = "activity.csv", header = TRUE, sep = ",")
activityDataset$date <- as.Date(activityDataset$date, "%Y-%m-%d")

################
### Part 1
################
totalStepsPerDay <- with(activityDataset, aggregate(steps, by = list(date), sum, na.rm=TRUE))
plot(totalStepsPerDay, type="h", main="Histogram of steps taken each day", xlab="Date (October to November 2012)", ylab="Frequency", lwd=4, col="blue")