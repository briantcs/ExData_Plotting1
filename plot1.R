## load sql for sql query

library(sqldf)

## load ggplot2

library(ggplot2)

## reading relavent data

data <- read.csv.sql("household_power_consumption.txt",header=TRUE,sep=";",
                     sql="Select * from file where Date = '1/2/2007' OR Date = '2/2/2007'")

## plot 1

with(data,hist(data$Global_active_power,main="Global Active Power", xlab="Global Active Power (kilowatts)",col="red"))

dev.copy(png,file="plot1.png")

dev.off()

