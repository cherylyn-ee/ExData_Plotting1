power<-read.table("household_power_consumption.txt",header=TRUE,sep=";")
power$Date<-as.Date(power$Date,"%d/%m/%Y")
powercon<-subset(power,power$Date>="2007-02-01" & power$Date<="2007-02-02")
powercon$Global_active_power<-as.numeric(as.character(powercon$Global_active_power))
hist(as.numeric(as.character(powercon$Global_active_power)),col="red",
                main="Global Active Power",xlab="Global Active Power(kilowatts)",ylab="Frequency")


# to copy out - block when running plot4
# dev.copy(png,file="plot1.png")
# dev.off()