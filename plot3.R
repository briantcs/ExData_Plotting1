## load sql for sql query

library(sqldf)

## load ggplot2

library(ggplot2)

## reading relavent data

data <- read.csv.sql("household_power_consumption.txt",header=TRUE,sep=";",
                     sql="Select * from file where Date = '1/2/2007' OR Date = '2/2/2007'")

## plot 3

with(data,plot(date_time,Sub_metering_1,type='l',xlab="",ylab="Energy sub metering"))

with(data,lines(date_time,Sub_metering_2))

with(data,lines(date_time,Sub_metering_3))

dev.copy(png,file="plot3.png")

dev.off()
