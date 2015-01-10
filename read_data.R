read_data <- function() {
    setClass("myDateTimeFormat")
    setAs("character", "myDateTimeFormat", function(from) strptime(from, format="%d/%m/%Y %H:%M:%S") )
    
    read.table("subset.txt", header=FALSE, sep=";",
                    col.names=c("Date_time", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
                    colClasses=c("myDateFormat", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric"))
}
