# Getting and Cleaning Data
# Coursera
# John Hopkins University

# Bastiaan Quast
# bquast@gmail.com

# copied from H. Wickham

library(httr)

# 1. Find OAuth settings for github:
#    http://developer.github.com/v3/oauth/
oauth_endpoints("github")

# 2. Register an application at https://github.com/settings/applications
#    Insert your values below - if secret is omitted, it will look it up in
#    the GITHUB_CONSUMER_SECRET environmental variable.
#

#    Use http://localhost:1410 as the callback url
myapp <- oauth_app("github", key="7eeb5753524e12ead876", secret="ef33989a51346e93a46ceecc743e6e302fdfe953")

# 3. Get OAuth credentials
github_token <- oauth2.0_token(oauth_endpoints("github"), myapp)

# 4. Use API
req <- GET("https://api.github.com/users/jtleek/repos")
stop_for_status(req)
a <- content(req)

a[4]