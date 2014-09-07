

require(sqldf)
data <- read.csv.sql( file='household_power_consumption.txt',
                      sep=";",
                      sql="select * from file where Date = '1/2/2007' or Date = '2/2/2007'",
                      header=TRUE)

with(data,hist(data$Global_active_power,main="Global Active Power", xlab="Global Active Power (kilowatts)",col="red"))

dev.copy(png,file="plot1.png")

dev.off()
