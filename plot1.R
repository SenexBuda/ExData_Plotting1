## import the data set
household_power_consumption <- read.csv("C:/coursera/EDA/household_power_consumption.txt", 
                                        header = TRUE, sep=";", na.strings="?")

## extract the relevant subset of the data that is subject to the exploratory data analysis
Feb07StartHPC<-subset(household_power_consumption, Date=="2/2/2007" | Date=="1/2/2007")

## plot a histogram showing the distribution of global active power for these two days
png(file="Plot1.png")
hist(Feb07StartHPC$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()