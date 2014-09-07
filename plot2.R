

require(sqldf)
data <- read.csv.sql( file='household_power_consumption.txt',
                      sep=";",
                      sql="select * from file where Date = '1/2/2007' or Date = '2/2/2007'",
                      header=TRUE)
date_time<-as.POSIXct(paste(data$Date, data$Time), format = "%d/%m/%Y %T")

with(data,plot(date_time,data$Global_active_power,main="",xlab="",ylab="Global Active Power (kilowatts)"))

dev.copy(png,file="plot1.png")

dev.off()
