library(ggplot2)


data <- read.csv("237 Project.csv")


time_boxplot<- ggplot(data, aes(x=Math_Complexity, y =Time_Taken_s, color = Math_Complexity)) +
  geom_boxplot() +labs (x= "", y= "Time Taken", title="Complexity vs Time Box Plot")

time_boxplot
