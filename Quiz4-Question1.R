# Getting and Cleaning Data
# Coursera
# John Hopkins University

# Bastiaan Quast
# bquast@gmail.com

# download data
file.url <- 'https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv'
file.dest <- 'ACS4.csv'
download.file(file.url, file.dest, method='curl')

# load the data
ACS <- read.csv(file.dest)

# extract names
names <- names(ACS)

# string split
strsplit(names, 'wgtp')[123]