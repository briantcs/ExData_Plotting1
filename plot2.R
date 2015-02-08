## load sql for sql query

library(sqldf)

## load ggplot2

library(ggplot2)

## reading relavent data

data <- read.csv.sql("household_power_consumption.txt",header=TRUE,sep=";",
                     sql="Select * from file where Date = '1/2/2007' OR Date = '2/2/2007'")

## plot 2

date_time<-as.POSIXct(paste(data$Date, data$Time), format = "%d/%m/%Y %T")

with(data,plot(date_time,data$Global_active_power,type='l',main="",xlab="",ylab="Global Active Power (kilowatts)"))

dev.copy(png,file="plot2.png")

dev.off()
