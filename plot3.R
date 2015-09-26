NEI <- readRDS("summarySCC_PM25.rds")
#SCC <- readRDS("Source_Classification_Code.rds")

library(ggplot2)

png(filename = "plot3.png", 
    width = 480, height = 480, 
    units = "px")

Baltimore <- NEI[NEI$fips =="24510",]

g <- ggplot(Baltimore, aes(year, Emissions, color = type))
g + geom_line(stat = "summary", fun.y = "sum") +
  ylab(expression('Total PM'[2.5]*" Emissions")) +
  ggtitle("Total Emissions in Baltimore City from 1999 to 2008")
dev.off()