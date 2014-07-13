plot1 <- function(){
  
  ## readHPC() gets and cleans data from household_power_consumption.txt for plotting here
  ## readHPC().R is in same repo as plot1.R
  dat<-readHPC()
  
  ## open graphics device
  png(file = "plot1.png")
  
  ## construct plot
  hist(dat$Global_active_power,
       main = "Global Active Power",
       xlab ="Global Active Power (kilowatts)",
       col="red")
  
  ## close graphics device
  dev.off()
}