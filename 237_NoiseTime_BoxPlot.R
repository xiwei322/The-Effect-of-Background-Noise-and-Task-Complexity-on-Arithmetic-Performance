library(ggplot2)


data <- read.csv("237 Project.csv")
data$Noise_Condition <- factor(data$Noise_Condition, levels = c(0,1), labels=(c('No Noise', 'With Noise')))



time_boxplot<- ggplot(data, aes(x=Noise_Condition, y =Time_Taken_s, color = Noise_Condition)) +
  geom_boxplot() +labs (x= "", y= "Accuracy", title="Noise Condition vs Time Box Plot")

time_boxplot
