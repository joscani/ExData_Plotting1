# load data

load("electric.new.RData")

png(filename="plot3.png")

with(electric.new,{
	plot(Time.new,Sub_metering_1,type="l",
												xlab="",
												ylab="Energy sub metering")
	lines(Time.new,Sub_metering_2,col="red")
	lines(Time.new,Sub_metering_3,col="blue")
	legend("topright",paste0("Sub_metering_",1:3),col=c("black","red","blue"),lty=1)
}
										)

dev.off()
