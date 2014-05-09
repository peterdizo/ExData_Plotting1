# read only 2 day data
data <- read.csv("household_power_consumption.txt",header = TRUE, sep=";", na.strings="?", skip=66636, nrows=2880)

#name columns properly
colnames(data) <- c("Date","Time","Global_active_power","Global_reactive_power", "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3")

# launch png graphics device
png(filename = "plot1.png", width = 480, height = 480, units = "px")

#  create plot
hist(as.numeric(data$Global_active_power), col = "red", main="Global Active Power", xlab = "Global Active Power (kilowatts)")

# close graphics device
dev.off()