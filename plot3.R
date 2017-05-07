energy <- read.table("household_power_consumption.txt",sep=";")

names(energy) <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")

subsetting <- subset(energy,energy$Date=="1/2/2007" | energy$Date =="2/2/2007")

datetime <-strptime(paste(subsetting$Date, subsetting$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

plot(datetime, as.numeric(subsetting$Sub_metering_1), type="l", ylab="Energy Submetering", xlab="")

lines(datetime, as.numeric(subsetting$Sub_metering_2), type="l", col="red")

lines(datetime, as.numeric(subsetting$Sub_metering_3), type="l", col="blue")

legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))