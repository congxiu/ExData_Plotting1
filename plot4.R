png("plot4.png")
par(mfrow = c(2, 2))
with(my_data, plot(Datetime, Global_active_power, xlab = '', 
                   ylab = "Global Active Power", type = 'l'))
with(my_data, plot(Datetime, Voltage, xlab = 'datetime', 
                   ylab = "Voltage", type = 'l'))
with(my_data, plot(Datetime, Sub_metering_1, type = 'n', xlab = '',
                   ylab = 'Energy sub metering'))
lines(my_data$Datetime, my_data$Sub_metering_1)
lines(my_data$Datetime, my_data$Sub_metering_2, col = 'red')
lines(my_data$Datetime, my_data$Sub_metering_3, col = 'blue')
legend("topright", names(my_data)[6:8], lty = c(1,1), 
       col = c("black", "red", "blue"), box.lty = 0 )
with(my_data, plot(Datetime, Global_reactive_power, 
                   xlab = 'datetime', ylab = "Global_reactive_power"
                   , type = 'l'))
dev.off()