df = read.table('D:\\OneDrive - zju.edu.cn\\Coursera\\R-4\\household_power_consumption.txt',
        sep = ';',header = TRUE)
df$FullTime <- strptime(paste(df$Date, df$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
df$Date = as.Date(df$Date,'%d/%m/%Y')
df = subset(df, Date >= as.Date('2007-02-01'))
df = subset(df, Date <= as.Date('2007-02-02'))
head(df)

# fig 1
df$Global_active_power = as.numeric(df$Global_active_power)
png("plot1.png", width=480, height=480)
hist(df$Global_active_power,col = 'red', main='Global active power',xlab='Global active power (killowatts)')
dev.off()