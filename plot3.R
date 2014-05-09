# read only 2 day data
data <- read.csv("household_power_consumption.txt",header = TRUE, sep=";", na.strings="?", skip=66636, nrows=2880)

#name columns properly
colnames(data) <- c("Date","Time","Global_active_power","Global_reactive_power", "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3")

# launch png graphics device
png(filename = "plot3.png", width = 480, height = 480, units = "px")

#  create plot
plot(as.numeric(data$Sub_metering_1),type="l", main="", ylab = "Energy sub metering", xaxt = "n", xlab ="")
points(as.numeric(data$Sub_metering_2),type="l",col = "red")
points(as.numeric(data$Sub_metering_3),type="l",col = "blue")
axis(1,at = c(1,1440,2880),labels = c("Thu", "Fri", "Sat"))
legend("topright", c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lty=c(1,1,1),col=c("black","red", "blue"))

# close graphics device
dev.off()