#1st PLOT
#--------

par(mfrow = c(2,2))
title = ""
x_axis = ""
y_axis = "Global Active Power (kilowatts)"

with(data, plot(1:length(Date), Global_active_power, type="l", xlab=x_axis,ylab=y_axis,xaxt="n"))
          
axis(1,at=c(0,length(data$Date)/2,length(data$Date)),labels=c("Thu","Fri","Sat"))

##2nd PLOT
##--------

x_axis = "datetime"
y_axis = "Voltage"

with(data, plot(1:length(Date), Voltage, type="l", xlab=x_axis,ylab=y_axis,xaxt="n"))
          
axis(1,at=c(0,length(data$Date)/2,length(data$Date)),labels=c("Thu","Fri","Sat"))


###3rd PLOT
###--------

x_axis = ""
y_label = "Energy sub metering"

with(data, 
     plot(1:length(Date), data$Sub_metering_1, type="l", 
          xlab=x_axis,ylab=y_axis,xaxt="n",col="black")
    )

with(data, 
     lines(1:length(Date), data$Sub_metering_2, type="l", 
          xlab=x_label,ylab=y_label,xaxt="n",col="red")
    )

with(data, 
     lines(1:length(Date), data$Sub_metering_3, type="l", 
          xlab=x_axis,ylab=y_axis,xaxt="n",col="blue")
    )

axis(1,at=c(0,length(data$Date)/2,length(data$Date)),labels=c("Thu","Fri","Sat"))

legend("topright", lty = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"), bty = "n")


####4th PLOT
####--------
x_axis = "datetime"
y_axis = "Global_reactive_power"
with(data, 
     plot(1:length(Date), Global_reactive_power, type="l", 
          xlab=x_axis,ylab=y_axis,xaxt="n"))
          
axis(1,at=c(0,length(data$Date)/2,length(data$Date)),labels=c("Thu","Fri","Sat"))


dev.copy(png,file = "plot4.png")
dev.off()
