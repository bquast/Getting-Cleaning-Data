# Getting and Cleaning Data
# Coursera
# John Hopkins University

# Bastiaan Quast
# bquast@gmail.com

# write the file url and file destination to an object
file.url <- 'https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv'
file.dest <- 'ACS.csv'

# download from the URL
download.file(file.url, file.dest, method='curl' )

# read the data
 ACS <- read.csv('ACS.csv')

# tabulate the value variable (VAL)
table(ACS$VAL)

# extract the value of code 24 (1,000,000+)
table(ACS$VAL)[[24]]