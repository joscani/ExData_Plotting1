## load data

load("electric.new.RData")

png(filename="plot4.png")
par(mfrow=c(2,2))
with(electric.new, {
	plot( Time.new, Global_active_power,type="l",
												xlab = "",
												ylab = "Global Active Power (kilowatts)")
	
	plot( Time.new, Voltage, type = "l",
		 xlab = "datetime",
		 ylab = "Voltage" )
	
	plot(Time.new,Sub_metering_1,type="l",
			 xlab="",
			 ylab="Energy sub metering")
	lines(Time.new,Sub_metering_2,col="red")
	lines(Time.new,Sub_metering_3,col="blue")
	legend("topright",paste0("Sub_metering_",1:3),col=c("black","red","blue"),lty=1,cex=0.8)
	
	plot( Time.new, Global_reactive_power, type = "l",
				xlab = "datetime")
	
	} )
dev.off()