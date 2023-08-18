#----------------------------------------
# GrapheR - session of 2023.08.18
#----------------------------------------
#------------------------------
# GRAPH 1: Histogram
#------------------------------

# Loading of the dataset

dataset <- buoy
attach(dataset)

# Graph

hist(ATMP, axes=FALSE, ann=FALSE, freq=TRUE, col="#ff0000",
  xlim=c(-14,26), ylim=c(0,922))

axis(1)
axis(2)

title(main="Atmospheric Temps 1984-1999",
  xlab="atmospheric temperature")

box()

detach(dataset)

