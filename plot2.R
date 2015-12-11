dat <- read.csv2("household_power_consumption.txt", stringsAsFactors = FALSE)
dat$Date_time <- strptime(paste(dat$Date,dat$Time),"%d/%m/%Y %H:%M:%S")
dat$Global_active_power <- (as.numeric(dat$Global_active_power))
sub <- dat[dat$Date == "1/2/2007" | dat$Date == "2/2/2007",]
png(file = "plot2.png", bg = "transparent")
plot(sub$Date_time, sub$Global_active_power, pch = NA, xlab = NA, ylab = "Global Active Power (kilowatts)")
lines(sub$Date_time, sub$Global_active_power)
dev.off()