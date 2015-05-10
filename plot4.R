## Getting full dataset

data <- read.csv("./Data/household_power_consumption.txt", header=T, sep=“;" , na.strings=“?", stringsAsFactors=F, comment.char="", quote='\"')

## Subsetting the data

subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]


# Plot 4

par(mfrow = c(2, 2))

plot(DateTime, Global_active_power, type = "l", xlab = "", ylab = "Global Active Power")

plot(DateTime, Voltage,type = "l",xlab = "datetime", ylab = "Voltage")

plot(DateTime, Sub_metering_1,type = "l",col = "black",xlab = "", ylab = "Energy sub metering")

lines(DateTime, Sub_metering_2, col = "red")

lines(DateTime, Sub_metering_3, col = "blue")

legend("topright", bty = "n",col = c("black", "red", "blue"), c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),lwd = 1)

plot(DateTime, Global_reactive_power, type = "l",col = "black",xlab = "datetime", ylab = colnames(newData)[4])

dev.copy(png, file="plot4.png", height=480, width=480)

dev.off()
