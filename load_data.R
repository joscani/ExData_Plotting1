# load data, convert to date, select and save as Rdata

download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", 
											destfile = "electric.zip", quiet = TRUE, method = "wget")


unzip("electric.zip")

electric <- read.csv("household_power_consumption.txt", sep=";", na.strings="?")

electric$Date.compl <- paste(electric$Date, electric$Time,sep=" ")
electric$Date <- as.Date(electric$Date,format="%d/%m/%Y")
electric$Time.new <- strptime(electric$Date.compl, format= "%d/%m/%Y %H:%M:%S" )

electric.new <- subset(electric,Date>="2007-02-01" & Date<="2007-02-02")

save(electric.new,file="electric.new.RData")
