NEI <- readRDS("summarySCC_PM25.rds")
#SCC <- readRDS("Source_Classification_Code.rds")

png(filename = "plot2.png", 
    width = 480, height = 480, 
    units = "px")

Baltimore <- NEI[NEI$fips =="24510",]

totalEmissions <- aggregate(Baltimore$Emissions, list(Baltimore$year), FUN = "sum")
plot(totalEmissions, type = "l", xlab = "Year", 
     main = "Total Emissions in Baltimore from 1999 to 2008", 
     ylab = expression('Total PM'[2.5]*" Emission"))

dev.off()