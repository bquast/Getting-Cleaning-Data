# Getting and Cleaning Data
# Coursera
# John Hopkins University

# Bastiaan Quast
# bquast@gmail.com

# download data and load it
file.url <- 'https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv'
file.dest <- 'GDP4.csv'
download.file(file.url, file.dest, method='wget')
GDP <- read.csv(file.dest, skip=4, nrows=190)
file.url <- 'https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FEDSTATS_Country.csv'
file.dest <- 'edu.csv'
download.file(file.url, file.dest, method='wget')
edu <- read.csv(file.dest)

# merge the datasets
merged <- merge(GDP, edu, by.x = 'X', by.y = 'CountryCode')

# extract the information
fy.june <- grep('Fiscal year end: June', merged$Special.Notes)
length(fy.june)
