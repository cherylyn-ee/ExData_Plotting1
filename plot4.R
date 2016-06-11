# read table
power<-read.table("household_power_consumption.txt",header=TRUE,sep=";")
# set date format
power$Date<-as.Date(power$Date,"%d/%m/%Y")
# subset dates 
powercon<-subset(power,power$Date>="2007-02-01" & power$Date<="2007-02-02")
powercon$Global_active_power<-as.numeric(as.character(powercon$Global_active_power))
# new column for day & date combo
powercon$Day<-as.POSIXct(paste(powercon$Date, powercon$Time), format="%Y-%m-%d %H:%M:%S")
par(mfrow=c(2,2), mar=c(4,4,4,4))
# top left plot
with(powercon,plot(Day,Global_active_power,type="l", ylab = "Global Active Power (kilowatts)"))
# top right plot
with(powercon,plot(Day,as.numeric(as.character(Voltage)),type="l", ylab = "Voltage"))
# bottom left plot
with(powercon,plot(Day,as.numeric(as.character(Sub_metering_1)),type="l", ylab = "Energy sub metering",col="black"))
with(powercon,lines(Day,as.numeric(as.character(Sub_metering_2)),type="l",col="red"))
with(powercon,lines(Day,as.numeric(as.character(Sub_metering_3)),type="l",col="blue"))
legend("topright", inset = 0.05,c("Sub_meter1","Sub_meter2","Sub_meter3"),col=(c("black","red","blue")),lty = 1, box.lty=0,cex=0.8)
# bottom right plot
with(powercon,plot(Day,as.numeric(as.character(Global_reactive_power)),type="l", ylab = "Global reactive Power"))
dev.copy(png,file="plot4.png")
dev.off()