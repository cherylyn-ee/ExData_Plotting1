powercon$Day<-as.POSIXct(paste(powercon$Date, powercon$Time), format="%Y-%m-%d %H:%M:%S")
with(powercon,plot(Day,Global_active_power,type="l", ylab = "Global Active Power (kilowatts)"))

# to copy out - block when running plot4
# dev.copy(png,file="plot2.png")
# dev.off()