# Getting and Cleaning Data
# Coursera
# John Hopkins University

# Bastiaan Quast
# bquast@gmail.com

# write the file url and file destination to an object
file.url <- 'https://d396qusza40orc.cloudfront.net/getdata%2Fjeff.jpg'
file.dest <- 'jeff.jpg'

# download from the URL
download.file(file.url, file.dest, mode='wb' )

# load package
library(jpeg)

# load the data
picture <- readJPEG('jeff.jpg', native=TRUE)

# get the quantile info
quantile(picture, probs = c(0.3, 0.8) )