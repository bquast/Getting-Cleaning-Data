# Getting and Cleaning Data
# Coursera
# John Hopkins University

# Bastiaan Quast
# bquast@gmail.com

# download data
file.url <- 'https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv'
file.dest <- 'GDP4.csv'
download.file(file.url, file.dest, method='wget')

# read the data
GDP <- read.csv(file.dest, skip=4, nrows=190)

# substitute comma's out
GDPdol <- gsub(",", "", GDP$X.4)

# convert to integer and calculate mean
GDPdol <- as.integer(GDPdol)
mean(GDPdol, na.rm=TRUE)

# attach the GDP data frame
attach(GDP)
grep("^United",GDP$V4)
