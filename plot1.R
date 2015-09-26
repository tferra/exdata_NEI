NEI <- readRDS("summarySCC_PM25.rds")
#SCC <- readRDS("Source_Classification_Code.rds")

png(filename = "plot1.png", 
    width = 480, height = 480, 
    units = "px")

totalEmissions <- aggregate(NEI$Emissions, list(NEI$year), FUN = "sum")
plot(totalEmissions, type = "l", xlab = "Year", 
     main = "Total Emissions in USA from 1999 to 2008", 
     ylab = expression('Total PM'[2.5]*" Emission"))

dev.off()