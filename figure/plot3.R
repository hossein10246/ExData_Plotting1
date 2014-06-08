Ynames = read.table("household_power_consumption.txt", header = TRUE, sep = ";", nrow = 1)
data = read.table("household_power_consumption.txt", header = FALSE, sep = ";", skip = 66630, nrow = 4000,
               col.names = names(Ynames))

X = subset(data , Date == "2/2/2007" | Date == "1/2/2007")

png("plot3.png", width = 480, height = 480)
xx = seq(as.POSIXct("2007-02-01 00:00:00"),by="min",length.out=24*2*60)
plot(xx,X$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering", col = "black")
lines(xx,X$Sub_metering_2, type = "l", col = "red")
lines(xx,X$Sub_metering_3, type = "l", col = "blue")
legend("topright", lty=1,lwd=1, col = c("black", "red", "blue"), legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.off()

