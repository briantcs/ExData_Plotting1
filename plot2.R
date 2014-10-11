origin_data <- read.table("household_power_consumption.txt", 
                        sep=";",
                        header=TRUE,
                        quote= "",
                        strip.white=TRUE,
                        stringsAsFactors = FALSE,
                        na.strings= "?")

data <- subset(origin_data, (origin_data$Date == "1/2/2007" | origin_data$Date== "2/2/2007")) 


data$Date <- as.Date(data$Date, format = "%d/%m/%Y")
data$DateTime <- as.POSIXct(paste(data$Date,data$Time))

# Constructing the plot and saving it to a PNG file with a width of 480 pixels and a height of 480 pixels.

# Opening the PNG graphic device
png(filename="plot2.png",
    width=480, height=480,
    units="px",
    bg = "transparent")

# creating a plot using base plotting system 
plot(data$DateTime,
     data$Global_active_power,
     type = "l", 
     lwd=1,
     xlab = "",  ylab = "Global Active Power (kilowatts)")

# Closing the PNG device
dev.off()
