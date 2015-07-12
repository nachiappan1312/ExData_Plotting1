
col_class = c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric")
dat = read.csv("household_power_consumption.txt",sep = ";",colClasses = col_class,na.strings = "?")
dat$Date =as.Date(dat$Date,"%d/%m/%Y")

x <- which(dat$Date == "2007-02-01")
y <- which(dat$Date == "2007-02-02")
z<- c(x,y)
dat = dat[z,]
#dat$Date = as.character(dat$Date)
dat$dtime = strptime(paste(dat$Date,dat$Time),"%Y-%m-%d %H:%M:%S")
plot(dat$dtime,dat$Global_active_power,type = "l",ylab = "Global Active Power (kilowatts)",xlab ="")


