# Read the data
data <- read.csv("~/Development/R_dir/Exploratory_Data_Analysis/ExData_Plotting1/data/household_power_consumption.txt", na.string="?", sep=";")

# Extract needed dataset
data <- data[(data$Date=="1/2/2007" | data$Date=="2/2/2007"),]

# Combine Date and Time
data$DateTime <- strptime(paste(data$Date, data$Time, sep=" "), 
                          format="%d/%m/%Y %H:%M:%S")

# Open png device
png("~/Development/R_dir/Exploratory_Data_Analysis/ExData_Plotting1/plot2.png", width=480, height=480)

# Plot plot2
plot(data$DateTime, data$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")

# Turn off device
dev.off()