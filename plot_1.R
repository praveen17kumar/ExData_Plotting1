# plot 1

file <- "C:/Users/Praveen/Documents/GitAll/Explor_course_project1/household_power_consumption.txt"
data <- read.table(file,header = TRUE,sep=";",stringsAsFactors = F,dec=".")
subset_of_data <- data[data$Date %in% c("1/2/2007","2/2/2007"),]

global_active_power <- as.numeric(subset_of_data$Global_active_power)
png("plot_1.png",width=480,height = 480)
hist(global_active_power,col = "red",main="Global Active Power",xlab = "Global Active Powers (Kilowatts)")
dev.off()
