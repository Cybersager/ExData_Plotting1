## Getting full dataset

data <- read.csv("./Data/household_power_consumption.txt", header=T, sep=“;" , na.strings=“?", stringsAsFactors=F, comment.char="", quote='\"')

## Subsetting the data

subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]


#str(subSetData)

datetime <- strptime(paste(subSetData$Date, subSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

globalActivePower <- as.numeric(subSetData$Global_active_power)


## Plot 2

plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)”)

dev.copy(png, file="plot2.png", height=480, width=480)

dev.off()
