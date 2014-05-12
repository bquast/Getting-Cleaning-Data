# Getting and Cleaning Data
# Coursera
# John Hopkins University

# Bastiaan Quast
# bquast@gmail.com

# write the file url and file destination to an object
file.url <- 'https://d396qusza40orc.cloudfront.net/getdata%2Fwksst8110.for'
file.dest <- 'getdata.for'

# download from the URL
download.file(file.url, file.dest)

# load the data
getdata <- read.fwf('getdata.for', skip=4, widths=c(12, 7,4, 9,4, 9,4, 9,4))

# inspect data
head(getdata)

# calculate sum for column 4
sum(getdata$V4)