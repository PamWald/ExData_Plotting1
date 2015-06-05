#####Exploratory Data Analysis: Course Project 1, Plot 3

#Load full data set 
hpc <- read.table ("household_power_consumption.txt", sep = ";", header = TRUE, 
                   na.strings = "?", stringsAsFactors = FALSE)

#Select rows from dates of interest
hpc <- hpc[(hpc$Date == '1/2/2007'| hpc$Date == '2/2/2007'),]


#Create Date/Time Variable
hpc$Date_Time <- strptime(paste(hpc$Date, hpc$Time, sep=" "), "%d/%m/%Y %H:%M:%S")


#Plot 3
png(filename = "plot3.png")

plot(hpc$Date_Time, hpc$Sub_metering_1, type = "l", col = "black", xlab = "",
     ylab = "Energy sub metering" )

lines(hpc$Date_Time, hpc$Sub_metering_2, type = "l", col = "red")

lines(hpc$Date_Time, hpc$Sub_metering_3, type = "l", col = "blue")

legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       lty = 1, lwd = 2.5, col = c("black", "red", "blue"))

dev.off() 



