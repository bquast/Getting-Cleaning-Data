# Getting and Cleaning Data
# Coursera
# John Hopkins University

# Bastiaan Quast
# bquast@gmail.com

# install the quantmod package
install.packages('quantmod')
library(quantmod)

# load Amazon stock data
amzn = getSymbols("AMZN",auto.assign=FALSE)

# extract the index
sampleTimes = index(amzn) 

# create logical for year 2012
year2012 <- grepl('2012-*', sampleTimes)

# count 2012 observations (i.e. true)
table(year2012)

# subset based on 2012
sampleTimes2012 <- subset(sampleTimes, year2012)

# convert to day of week
day <- format(sampleTimes2012, '%A')

# count each day
table(day)