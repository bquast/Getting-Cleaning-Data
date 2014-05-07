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

# specify the rows and columns to import
rowIndex <- 18:23
colIndex <- 7:15

# read the xlsx file
dat <- read.xlsx('NGAP.xlsx', sheetIndex=1, rowIndex = rowIndex, colIndex = colIndex)

# perform the required test
sum(dat$Zip*dat$Ext,na.rm=T)