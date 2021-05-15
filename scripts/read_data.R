##############################
### Author: Nate Rowan
### Date Created: 5/15/2021
### Date Last Modified: 5/15/2021
### Description: script to read in data, uses the same source
### as I used in the SABR project
##############################

library(plyr)
library(tidyverse)

mydir <- "../uconn-project/datasets"

myfiles <- list.files(path = mydir, pattern = "2019_pitch_data_\\d\\d.csv", full.names = TRUE)

pitches_2019 <- ldply(myfiles, read_csv, na = c("null", "", "NA"))

### Convert to a tibble
pitches_2019 <- as_tibble(pitches_2019)
