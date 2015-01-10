plot3 <- function() {
    source("read_data.R")
    
    t <- read_data()
    
    png("plot3.png", width=480, height=480)
    plot(t$Date_time, t$Sub_metering_1, type="l", col="black",
         xlab="", ylab="Energy sub metering")
    legend("topright",
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lty=1,
       col=c("black", "red", "blue"))
    lines(t$Date_time, t$Sub_metering_2, col="red")
    lines(t$Date_time, t$Sub_metering_3, col="blue")
    dev.off()
}
