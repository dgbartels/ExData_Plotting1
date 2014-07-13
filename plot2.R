plot2 <- function(){
  
  ## readHPC() gets and cleans data from household_power_consumption.txt for plotting here
  ## readHPC().R is in same repo as plot1.R
  dat<-readHPC()
  
  ## open graphics device
  png(file = "plot2.png")
  
  ## construct plot  
  plot(dat$datetime, dat$Global_active_power,
       type = "l",
       main = "",
       xlab="",
       ylab ="Global Active Power (kilowatts)")
  
  ## close graphics device
  dev.off()
}