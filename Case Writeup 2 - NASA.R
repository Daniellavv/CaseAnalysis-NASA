###

### MISM 6210 - 38151 - Spring 2023

### Case Writeup 02 - VIALE DANIELLA

#After investigating about the Challenger mission, I encountered that R has a 
#package with the O-rings temperatures that belong to launches before the Challenger.
#I will use that package to build two visualizations.

#install.packages("DAAG")
library(DAAG)
library(ggplot2)
data()

data(orings)
head(orings)

#Exhibit 1
plot(Total ~ Temperature, data = orings, main = "Temperature vs. O-rings Failure", xlab = "Temperature (F)", ylab = "Total O-rings Failure")

#Exhibit 2
model_1 <- lm(Total ~ Temperature, data = orings)
summary(model_1)
model_2 <- lm(Erosion ~ Temperature, data = orings)
summary(model_2)
model_3 <- lm(Blowby ~ Temperature, data = orings)
summary(model_3)

plot(orings$Temperature, orings$Total, 
     main = "Total O-rings Damage vs Temperature",
     xlab = "Temperature (F)", 
     ylab = "Total O-rings Damage",
     xlim = c(27, max(orings$Temperature)))
abline(lm(Total ~ Temperature, data = orings), col = "red")
