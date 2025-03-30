library(ggplot2)


data <- read.csv("237 Project.csv")

data$Noise_Condition <- factor(data$Noise_Condition, levels = c(0,1), labels=(c('No Noise', 'With Noise')))


time_plot <- ggplot(data, aes(x=Noise_Condition, y=Time_Taken_s, color=Math_Complexity, group=Math_Complexity)) + 
  stat_summary(fun=mean, geom="line", size=1)+
  stat_summary(fun=mean, geom="point", size=2)+
  labs(title="Noise Level's affect on Time Taken for simple and complex math problems", x="Noise Level", y="Time Taken")

print(time_plot)