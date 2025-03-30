library(ggplot2)


data <- read.csv("237 Project.csv")
data$Noise_Condition <- factor(data$Noise_Condition, levels = c(0,1), labels=(c('No Noise', 'With Noise')))



accuracy_boxplot<- ggplot(data, aes(x=Noise_Condition, y =Accuracy_Percentage, color = Noise_Condition)) +
  geom_boxplot() +labs (x= "", y= "Accuracy", title="Noise Condition vs Accuracy Box Plot", size="Size")+geom_count()

accuracy_boxplot
