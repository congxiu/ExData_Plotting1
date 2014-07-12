png(filename = "plot2.png", width = 480, height = 480)
with(my_data, plot(Datetime, Global_active_power, 
                   type = "l", xlab = '', 
                   ylab = 'Global Active Power (kilowatts)'))
dev.off()