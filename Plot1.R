#Setting the working directory

setwd("C:/Users/dylan/OneDrive/datasciencecoursera/Exploratory_Data_Analysis")

#Reading the data

power <- read.table("household_power_consumption.txt",skip=1,sep=";")

#Naming the data

names(power) <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")

#Sub-setting the data

subpower <- subset(power,power$Date=="1/2/2007" | power$Date =="2/2/2007")

#Calling and Naming the graph, then converting it into a png file

png(file = "RPlot1.png", width = 480, height = 480)

hist(as.numeric(as.character(subpower$Global_active_power)),col="red",main="Global Active Power",xlab="Global Active Power(kilowatts)")
title(main="Global Active Power")

dev.off()


