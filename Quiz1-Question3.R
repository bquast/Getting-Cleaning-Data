# Getting and Cleaning Data
# Coursera
# John Hopkins University

# Bastiaan Quast
# bquast@gmail.com

# write the file url and file destination to an object
file.url <- 'https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FDATA.gov_NGAP.xlsx '
file.dest <- 'NGAP.xlsx'

# download from the URL
download.file(file.url, file.dest, method='curl' )

# load the package to read xlsx files
library(xlsx)