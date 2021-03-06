plot2 <- function() {
    source("read_data.R")
    
    t <- read_data()
    
    png("plot2.png", width=480, height=480)
    plot(t$Date_time, t$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
    dev.off()
}
