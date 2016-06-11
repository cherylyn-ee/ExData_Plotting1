par(mar=c(4,4,4,4))
with(powercon,plot(Day,as.numeric(as.character(Sub_metering_1)),type="l", ylab = "Energy sub metering",col="black"))
with(powercon,lines(Day,as.numeric(as.character(Sub_metering_2)),type="l",col="red"))
with(powercon,lines(Day,as.numeric(as.character(Sub_metering_3)),type="l",col="blue"))

# to copy out - block when running plot4
# dev.copy(png,file="plot3.png")
# dev.off()