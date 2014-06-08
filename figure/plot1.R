Ynames = read.table("household_power_consumption.txt", header = TRUE, sep = ";", nrow = 1)
data = read.table("household_power_consumption.txt", header = FALSE, sep = ";", skip = 66630, nrow = 4000,
               col.names = names(Ynames))

X = subset(data , Date == "2/2/2007" | Date == "1/2/2007")

png("plot1.png", width = 480, height = 480)
hist(X$Global_active_power, col = "red", xlab = "Gloabl Active Power (kilowatts)", main = "Gloabl Active Power")
dev.off()