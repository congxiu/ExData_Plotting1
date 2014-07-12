png("plot3.png")
with(my_data, plot(Datetime, Sub_metering_1, type = 'n', xlab = '',
                   ylab = 'Energy sub metering'))
lines(my_data$Datetime, my_data$Sub_metering_1)
lines(my_data$Datetime, my_data$Sub_metering_2, col = 'red')
lines(my_data$Datetime, my_data$Sub_metering_3, col = 'blue')
legend("topright", names(my_data)[6:8], lty = c(1,1), 
       col = c("black", "red", "blue") )
dev.off()