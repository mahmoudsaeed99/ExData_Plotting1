data <- read.table("household_power_consumption.txt", header = T, sep = ";")

subdata <- subset(data,data$Date=="1/2/2007" | data$Date =="2/2/2007")

intdata <- as.numeric(as.character(subdata$Global_active_power))

hist(intdata ,main ="Global Active Power"  ,  xlab = "Global Active Power (Kilowatts)" , col="red")

dev.copy(png , file = "plot1.png")
dev.off()
