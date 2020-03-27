library(datasets)
data("quakes")

quakes<-datasets::quakes


head(quakes)
tail(quakes)

summary(quakes[,c(3:5)])

plot(quakes$lat)
plot(quakes$long)
plot(quakes$depth)
plot(quakes$depth,quakes$mag)

plot(quakes$depth,type = "l")
plot(quakes$mag,type = "p")
plot(quakes$stations,type = "b",col='blue')

plot(quakes$long,xlab = 'Value of Longitude',ylab = 'Frequency',main = 'Longitude Index',col='blue')


barplot(quakes$depth,xlab = 'ABC',ylab = 'XYZ',main = 'Title',horiz = F,col='red')


hist(quakes$lat)
hist(quakes$mag)
hist(quakes$stations)

hist(quakes$mag,xlab = 'Magnitude',ylab='Frequency',main = "Title of Mag",col = 'blue')


boxplot(quakes$lat)
boxplot(quakes$depth)


par(mfrow=c(3,3),mar=c(2,5,2,1),las=0,bty='n')
plot(quakes$lat)
plot(quakes$long)
plot(quakes$depth)
plot(quakes$mag,type = 'l')
plot(quakes$stations,type = 'b')
barplot(quakes$stations,xlab = 'ABS',ylab = "XYZ",main = 'Title')
hist(quakes$long)
hist(quakes$depth)
boxplot(quakes[,c(3,5)])


#Descriptive statistics measues of Variations
quakes[is.na(quakes)] <- 0


var(quakes$stations)
sqrt(var(quakes$stations))

var(quakes$depth)
var(quakes$mag)
var(quakes$long)

sqrt(var(quakes$depth))
sqrt(var(quakes$mag))
sqrt(var(quakes$long))




