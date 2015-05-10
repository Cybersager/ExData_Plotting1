## Getting full dataset

data <- read.csv("./Data/household_power_consumption.txt", header=T, sep=“;" , na.strings=“?", stringsAsFactors=F, comment.char="", quote='\"')

## Subsetting the data

subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]


plot(x=(subepc$DateTime),y=subepc$Sub_metering_1,type="l",ylab="Energy sub metering",xlab="")

lines(x=(subepc$DateTime),y=subepc$Sub_metering_2,col="red")

lines(x=(subepc$DateTime),y=subepc$Sub_metering_3,col="blue")

legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),bty="l",col=c("black","red","blue"),lwd=2,cex=0.7)


## Plot 3

dev.copy(png, file="plot3.png", height=480, width=480)

dev.off()
