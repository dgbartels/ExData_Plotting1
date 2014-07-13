plot4 <- function(){
  
  ## readHPC() gets and cleans data from household_power_consumption.txt for plotting here
  ## readHPC().R is in same repo as plot1.R
  dat<-readHPC()
  
  ## open graphics device
  png(file = "plot4.png")
  
  ## prepare a 2 x 2 array of plots
  par(mfrow=c(2,2))
  
  ## Construct plots
  
  ##Plot4a - same as plot2
  
  plot(dat$datetime, dat$Global_active_power,
       type = "l",
       main = "",
       xlab="",
       ylab ="Global Active Power")
  
  ##Plot4b
  
  plot(dat$datetime, dat$Voltage,
       type = "l",
       main = "",
       xlab="datetime",
       ylab ="Voltage")
  
  ##Plot4c - same as plot3
  
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
         col = c("black", "red", "blue"),
         bty = "n")
  
  ##Plot4d
  
  plot(dat$datetime, dat$Global_reactive_power,
       type = "l",
       main = "",
       xlab="datetime",
       ylab ="Global_reactive_power")
  
  ## close graphics device
  dev.off()
}