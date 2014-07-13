plot3 <- function(){
  
  ## readHPC() gets and cleans data from household_power_consumption.txt for plotting here
  ## readHPC().R is in same repo as plot1.R
  dat<-readHPC()
  
  ## open graphics device
  png(file = "plot3.png")
  
  ## construct plot
  plot(dat$datetime, dat$Sub_metering_1,
       type = "l",
       col = "black",
       main = "",
       xlab="",
       ylab ="Energy sub metering")
  
  lines(dat$datetime, dat$Sub_metering_2,
       type = "l",
       col = "red",
       main = "",
       xlab="",
       ylab ="")
  
  lines(dat$datetime, dat$Sub_metering_3,
       type = "l",
       col = "blue",
       main = "",
       xlab="",
       ylab ="")
  
  legend("topright",
         lty = 1,
         legend = c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"),
         col = c("black", "red", "blue"))
  
  ## close graphics device
  dev.off()
}