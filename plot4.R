png("plot4.png",width= 6.4, height = 6.4,units= "in", res= 75)
tab1<-read.table("household_power_consumption.txt",skip=66637, nrows = 2880, sep = ";", col.names = c("Date","Hour","Active Power", "Reactive Power", "Voltage","Intensity", "S M 1", "S M 2", "S M 3"))
par(mfrow=c(2,2))
# No.1
plot(1:2880,tab1$Active.Power,type = "l", xlab = " ", ylab="Global Active Power",xaxt="n")
axis(1, at=c(1,1440,2880), labels=c("Thu","Fri","Sat"))
# No.2
plot(1:2880,tab1$Voltage,type = "l", xlab = "datetime", ylab="Voltage",xaxt="n")
axis(1, at=c(1,1440,2880), labels=c("Thu","Fri","Sat"))
# No.3
plot(1:2880,tab1$S.M.1,type="n",xlab = " ", ylab="Energy sub metering",xaxt="n")
lines(1:2880,tab1$S.M.1)
lines(1:2880,tab1$S.M.2,col="red")
lines(1:2880,tab1$S.M.3,col="blue")
axis(1, at=c(1,1440,2880), labels=c("Thu","Fri","Sat"))
legend("topright",legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col = c("black","red","blue"),lty = c(1,1,1),bty = "n")
# No.4
plot(1:2880,tab1$Reactive.Power,type = "l", xlab = "datetime", ylab="Global_reactive_power",xaxt="n")
axis(1, at=c(1,1440,2880), labels=c("Thu","Fri","Sat"))
axis(2, at=c(0,0.1,0.2,0.3,0.4,0.5))

#dev.copy(png,'plot3.png')
dev.off()