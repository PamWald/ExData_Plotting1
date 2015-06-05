#####Exploratory Data Analysis: Course Project 1, Plot 1

#Unzip the file provided on the course website copy it to working directory.

#Load full data set 
hpc <- read.table ("household_power_consumption.txt", sep = ";", header = TRUE, 
                   na.strings = "?", stringsAsFactors = FALSE)

#Select rows from dates of interest
hpc <- hpc[(hpc$Date == '1/2/2007'| hpc$Date == '2/2/2007'),]


#Plot 1
png(filename = "plot1.png")

hist(hpc$Global_active_power, col = "red", breaks = 12, ylim = c(0, 1200),
     main = "Global Active Power", xlab = "Global Active Power (kilowatts)")

dev.off()











