library(dplyr)
library(ggplot2)
png(filename="plot3.png", height=480, width=600,bg="white")
NEI <- readRDS("summarySCC_PM25.rds")
final <- NEI %.% group_by(type,year) %.% summarise(total= sum(Emissions))
qplot(final$year, final$total, data=final, color=type)+ geom_smooth(method=lm)
dev.off()