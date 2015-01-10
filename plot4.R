plot4 <- function() {
    source("read_data.R")
    
    t <- read_data()
    
    png("plot4.png", width=480, height=480)
    par(mfrow = c(2,2))
    plot(t$Date_time, t$Global_active_power, type="l", name ="", xlab="", ylab="Global Active Power")
    plot(t$Date_time, t$Voltage, type="l", name ="", xlab="datetime", ylab="Voltage")
    plot(t$Date_time, t$Sub_metering_1, type="l", col="black", xlab="", ylab="Energy sub metering")
    legend("topright",
           c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
           lty=1,
           col=c("black", "red", "blue"),
           bty='n',
           cex=0.9)
    lines(t$Date_time, t$Sub_metering_2, col="red")
    lines(t$Date_time, t$Sub_metering_3, col="blue")
    plot(t$Date_time, t$Global_reactive_power, type="l", name ="", xlab="datetime", ylab="Global_reactive_power")
    dev.off()
}
