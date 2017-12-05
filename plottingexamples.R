# Plot values

Years <- c(2014,2015,2016,2017,2018)
Production <- c(80,40,50,60,30)

plot(Years, Production, 
     main = "My Production Graph", 
     sub = "Hello", 
     xlim = c(2010,2020), 
     ylim = c(10,100), 
     col.main= "Blue",
     type = 'o',
     lty = 2,
     xlab = "Years of Production",
     font.main = 2,
     pch = 8)

