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