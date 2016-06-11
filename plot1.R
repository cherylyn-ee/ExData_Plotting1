# read table
power<-read.table("household_power_consumption.txt",header=TRUE,sep=";")
# set date format
power$Date<-as.Date(power$Date,"%d/%m/%Y")
# subset dates 
powercon<-subset(power,power$Date>="2007-02-01" & power$Date<="2007-02-02")
powercon$Global_active_power<-as.numeric(as.character(powercon$Global_active_power))
# plot histogram
hist(as.numeric(as.character(powercon$Global_active_power)),col="red",
                main="Global Active Power",xlab="Global Active Power(kilowatts)",ylab="Frequency")

# save to png file
dev.copy(png,file="plot1.png")
dev.off()