# BUOY! #

# Code for Retrieving Buoy Data #

str1 = "http://www.ndbc.noaa.gov/view_text_file.php?filename="
str2 = ".txt.gz&dir=data/historical/stdmet/"
buoynum <- "44013"

# years to read
y1 <- 1984
y2 <- 1998 

data <- NULL

while(y1<=y2){
  # make the file name
  fyl <- paste0(str1,buoynum,"h",y1,str2)
  
  # read the column names
  header <- scan(fyl,nlines=1,what=character())
  
  # read the data
  buoy <- read.table(fyl,skip=2,header=FALSE)
  
  # re-attach the column names
  colnames(buoy)<-header
  
  # re-assign 999 as NA
  buoy$ATMP[buoy$ATMP==999]<-NA
  
  # add the data to the variable
  data<-c(data,buoy$ATMP)
  
  # write the year to the screen
  cat(paste(y1))
  
  # increment the year
  y1<-y1+1
}

write.csv(x = buoy, 
          file = "freshBuoyData.csv")
