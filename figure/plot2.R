Ynames = read.table("household_power_consumption.txt", header = TRUE, sep = ";", nrow = 1)
data = read.table("household_power_consumption.txt", header = FALSE, sep = ";", skip = 66630, nrow = 4000,
               col.names = names(Ynames))

X = subset(data , Date == "2/2/2007" | Date == "1/2/2007")

png("plot2.png", width = 480, height = 480)
xx = seq(as.POSIXct("2007-02-01 00:00:00"),by="min",length.out=24*2*60)
plot(xx,X$Global_active_power, type = "l", xlab = "", ylab = "Gloabl Active Power (kilowatts)", col = "black")
dev.off()

