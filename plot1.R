
# load data

load("electric.new.RData")

png(filename="plot1.png")
hist(electric.new$Global_active_power, col = "red",
		 main = "Global Active Power",
		 xlab = "Global Active Power (kilowatts)")
dev.off()
