energy<- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")

subsetting <- subset(energy,energy$Date=="1/2/2007" | energy$Date =="2/2/2007")
datetime <- strptime(paste(subSetData$Date, subSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

par(mfrow = c(2, 2)) 
plot(datetime,as.numeric(subsetting$Global_active_power), type="l", xlab="", ylab="Global Active Power", cex=0.2)
plot(datetime,as.numeric(subsetting$Voltage) , type="l", xlab="datetime", ylab="Voltage")
plot(datetime,as.numeric(subsetting$Sub_metering_1), type="l", ylab="Energy Submetering", xlab="")
lines(datetime,as.numeric(subsetting$Sub_metering_2), type="l", col="red")
lines(datetime,as.numeric(subsetting$Sub_metering_3), type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=, lwd=2.5, col=c("black", "red", "blue"), bty="o")
plot(datetime,as.numeric(subsetting$Global_reactive_power), type="l", xlab="datetime", ylab="Global_reactive_power")

