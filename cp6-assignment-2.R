### YOUR NAME HERE ###

# BUOY! #

# Exercise 1

buoy <- read.csv("freshBuoyData.csv")

x <- hist(buoy$ATMP)

# Exercise 2

# Remove using subset
buoy <- subset(buoy, select = -c(MWD, DEWP, VIS))


# Exercise 3

buoy$WSPD[buoy$WSPD==99]<-NA

buoy <- subset(buoy, subset = !is.na(WSPD))

max(buoy$WSPD)

# Exercise 4
#install.packages("GrapheR")
#library(GrapheR)

# make a better plot