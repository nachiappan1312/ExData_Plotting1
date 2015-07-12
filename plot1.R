col_class = c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric")
dat = read.csv("household_power_consumption.txt",sep = ";",colClasses = col_class,na.strings = "?")
dat$Date =as.Date(dat$Date,"%d/%m/%Y")

x <- which(dat$Date == "2007-02-01")
y <- which(dat$Date == "2007-02-02")
z<- c(x,y)
dat = dat[z,]
hist(dat$Global_active_power,col = "red",xlab = "Global Active Power (kilowatts)",main = "Global Active Power")