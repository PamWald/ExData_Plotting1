#####Exploratory Data Analysis: Course Project 1, Plot 2

#Load full data set 
hpc <- read.table ("household_power_consumption.txt", sep = ";", header = TRUE, 
                   na.strings = "?", stringsAsFactors = FALSE)

#Select rows from dates of interest
hpc <- hpc[(hpc$Date == '1/2/2007'| hpc$Date == '2/2/2007'),]


#Create Date/Time Variable
hpc$Date_Time <- strptime(paste(hpc$Date, hpc$Time, sep=" "), "%d/%m/%Y %H:%M:%S")


#Plot 2
png(filename = "plot2.png")

plot(hpc$Date_Time, hpc$Global_active_power, type = "l", xlab = "", 
     ylab = "Global Active Power (kilowatts)") 

dev.off() 


