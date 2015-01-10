plot1 <- function() {
    source("read_data.R")
    
    t <- read_data()
    
    png("plot1.png", width=480, height=480)
    hist(t$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
    dev.off()
}
