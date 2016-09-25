## import the data set
household_power_consumption <- read.csv("C:/coursera/EDA/household_power_consumption.txt", 
                                        header = TRUE, sep=";", na.strings="?")

## extract the relevant subset of the data that is subject to the exploratory data analysis
Feb07StartHPC<-subset(household_power_consumption, Date=="2/2/2007" | Date=="1/2/2007")

## for conveninece add a datetime column to the data frame by combining and standardizing
## the information from the Date and Time columns
Feb07StartHPC$datetime<-strptime(paste(Feb07StartHPC$Date,Feb07StartHPC$Time), "%d/%m/%Y %H:%M:%S")

## Plot the global active power in kw against time
png(file="Plot2.png")
with(Feb07StartHPC, plot(datetime,Global_active_power,ylab="Global Active Power (kilowatts)", xlab="", type="l"))
dev.off()