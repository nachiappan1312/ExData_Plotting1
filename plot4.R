col_class = c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric")
dat = read.csv("household_power_consumption.txt",sep = ";",colClasses = col_class,na.strings = "?")
dat$Date =as.Date(dat$Date,"%d/%m/%Y")

x <- which(dat$Date == "2007-02-01")
y <- which(dat$Date == "2007-02-02")
z<- c(x,y)
dat = dat[z,]
par(mfrow = c(2, 2))
plot(dat$dtime,dat$Global_active_power,type = "l",ylab = "Global Active Power",xlab ="")
plot(dat$dtime,dat$Voltage,type = "l",ylab = "Voltage",xlab ="datetime")
plot(dat$dtime,dat$Sub_metering_1,type = "l",col = "black",ylab = "Energy sub metering",xlab = "")
lines(dat$dtime,dat$Sub_metering_2,col = "red")
lines(dat$dtime,dat$Sub_metering_3,col = "blue")
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col= c("black","red","blue"),lty= c(1,1),xjust = 1,cex =0.3,bty= "n")
plot(dat$dtime,dat$Global_reactive_power,type = "l",ylab = "Global Reactive Power",xlab ="datetime")
