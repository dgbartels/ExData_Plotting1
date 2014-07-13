readHPC <- function(){
  
  ## readHPC() will be called by the various plotx() functions and
  ## returns a data.frame that can be used for plotting as required.
  
  ## read in first 5 rows and header to get column names and classes
  HPC.5rows <- read.table("household_power_consumption.txt", header=TRUE, sep=";", nrows=5)
  classes <- sapply(HPC.5rows, class)
  
  ## read in data from 1/2/2007 and 2/2/2007
  myFile <- pipe('grep "^[1-2]/2/2007" "household_power_consumption.txt"')
  HPC.data <- read.table(myFile,header=FALSE,sep=";", na.strings="?", stringsAsFactors=FALSE)
  
  ## set column names
  colnames(HPC.data) <- names(HPC.5rows)
  
  ## add column with usuable date & time (datetime) values for plotting as required
  temp <- paste(HPC.data$Date, HPC.data$Time)
  HPC.data$datetime <- strptime(temp, "%d/%m/%Y %H:%M:%S")
  
  ##return data.frame
  HPC.data
}