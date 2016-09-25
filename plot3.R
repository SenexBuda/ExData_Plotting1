## import the data set
household_power_consumption <- read.csv("C:/coursera/EDA/household_power_consumption.txt", 
                                        header = TRUE, sep=";", na.strings="?")

## extract the relevant subset of the data that is subject to the exploratory data analysis
Feb07StartHPC<-subset(household_power_consumption, Date=="2/2/2007" | Date=="1/2/2007")

## for conveninece add a datetime column to the data frame by combining and standardizing
## the information from the Date and Time columns
Feb07StartHPC$datetime<-strptime(paste(Feb07StartHPC$Date,Feb07StartHPC$Time), "%d/%m/%Y %H:%M:%S")

## plot the energy sub metering for each of the 3 sub meters (kitchen, laundry, hvac) against time
png(file="Plot3.png")
with(Feb07StartHPC, {
        plot(datetime,Sub_metering_1, type="l", ylab="Energy sub metering", xlab="")
        lines(datetime,Sub_metering_2, type="l", col="red")
        lines(datetime,Sub_metering_3, type="l", col="blue")
        })
legend("topright", lwd=1, col = c("black","red","blue"), legend=paste("Sub_metering_",1:3))
dev.off()
