# load data

load("electric.new.RData")


# Spanish R session locale causes jue, vie, sáb labels instead Thu, Fri, Sat
png(filename="plot2.png")
with(electric.new, plot(Time.new,Global_active_power,type="l",
												xlab="",
												ylab="Global Active Power (kilowatts)"))
dev.off()
