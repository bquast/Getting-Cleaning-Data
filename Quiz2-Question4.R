# Getting and Cleaning Data
# Coursera
# John Hopkins University

# Bastiaan Quast
# bquast@gmail.com

# write the file url and file destination to an object
file.url <- 'http://biostat.jhsph.edu/~jleek/contact.html'
file.dest <- 'contact.html'

# download from the URL
download.file(file.url, file.dest)

# set up a connection
con <- file('contact.html')

# read the lines
lines <- readLines(con)

# write the lines to objects
l10 <- lines[10]
l20 <- lines[20]
l30 <- lines[30]
l100 <- lines[100]

# count the number of characters for each object
nchar(l10)
nchar(l20)
nchar(l30)
nchar(l100)