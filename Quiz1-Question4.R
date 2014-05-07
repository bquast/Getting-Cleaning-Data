# Getting and Cleaning Data
# Coursera
# John Hopkins University

# Bastiaan Quast
# bquast@gmail.com

# write the file url and file destination to an object
file.url <- 'https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Frestaurants.xml'
file.dest <- 'balt.rest.xml'

# download from the URL
download.file(file.url, file.dest, method='curl')

# load the XML package
library(XML)

# read the XML file
doc <- xmlTreeParse('balt.rest.xml', useInternalNodes = TRUE)

# define the rootnode
rootNode <- xmlRoot(doc)

# write the zipcode data to a list
zipcode <- xpathSApply(rootNode, "//zipcode", xmlValue)

# table the zipcodes
table(zipcode)[['21231']]