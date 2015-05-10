## Getting full dataset

data <- read.csv("./Data/household_power_consumption.txt", header=T, sep=“;" , na.strings=“?", stringsAsFactors=F, comment.char="", quote='\"')

## Subsetting the data

subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]


#str(subSetData)

globalActivePower <- as.numeric(subSetData$Global_active_power)

## Plot 1

hist(globalActivePower, main="Global Active Power", xlab="Global Active Power (kilowatts)” , col="red")

dev.copy(png, file="plot1.png", height=480, width=480)

dev.off()
