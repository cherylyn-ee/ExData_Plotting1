# read table
power<-read.table("household_power_consumption.txt",header=TRUE,sep=";")
# set date format
power$Date<-as.Date(power$Date,"%d/%m/%Y")
# subset dates 
powercon<-subset(power,power$Date>="2007-02-01" & power$Date<="2007-02-02")
powercon$Global_active_power<-as.numeric(as.character(powercon$Global_active_power))
# new column for day & date combo
powercon$Day<-as.POSIXct(paste(powercon$Date, powercon$Time), format="%Y-%m-%d %H:%M:%S")
# plot lineplot
with(powercon,plot(Day,Global_active_power,type="l", ylab = "Global Active Power (kilowatts)"))

# save to png file
dev.copy(png,file="plot2.png")
dev.off()