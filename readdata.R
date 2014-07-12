my_data <- read.table('./household_power_consumption.txt', 
                      header = TRUE, sep = ";", nrow = 2075259, 
                      comment.char = "", na.strings = "?")
my_data <- my_data[my_data$Date == '1/2/2007' | 
                     my_data$Date == '2/2/2007', ]
my_data$Date <- paste(my_data$Date, my_data$Time, sep = " ")
my_data$Time <- NULL
my_data$Date <- strptime(my_data$Date, format = "%d/%m/%Y %H:%M:%S")
names(my_data)[1] <- "Datetime"
