dat <- read.csv2("household_power_consumption.txt", stringsAsFactors = FALSE)
dat$Global_active_power <- (as.numeric(dat$Global_active_power))
sub <- dat[dat$Date == "1/2/2007" | dat$Date == "2/2/2007",]
png(file = "plot1.png", width = 480, height = 480, bg = "transparent")
hist(sub$Global_active_power, col = "red", breaks = c(0.5*0:15), main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
dev.off()