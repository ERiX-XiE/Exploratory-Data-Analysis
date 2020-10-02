library(datasets)
with(airquality,plot(Wind,Ozone,main = "Ozone and wind in NYC"
                     , type = "n"))
with(subset(airquality, Month == 5), points(Wind, Ozone, col = "blue"))
with(subset(airquality, Month != 5), points(Wind, Ozone, col = "red"))
legend("topright", pch = 1, col = c("blue","red"), legend  = c("May","Other Months"))


# multiple base plots 

par(mfrow = c(1,2))
with(airquality,{
  plot(Wind, Ozone, main = "Ozone and Wind")
  plot(Solar.R, Ozone, main = "Ozone and Solar Radiation")
})