png("plot1.png",width= 6, height = 6,units= "in", res= 80)
tab1<-read.table("household_power_consumption.txt",skip=66637, nrows = 2880, sep = ";", col.names = c("Date","Hour","Active Power", "Reactive Power", "Voltage","Intensity", "S M 1", "S M 2", "S M 3"))
hist(tab1$Active.Power,col = "red", xlab = "Global Active Power (killowatts)", main = "Global Active Power")
dev.off()
