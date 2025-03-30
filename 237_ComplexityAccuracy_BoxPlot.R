library(ggplot2)


data <- read.csv("237 Project.csv")


accuracy_boxplot<- ggplot(data, aes(x=Math_Complexity, y =Accuracy_Percentage, color = Math_Complexity)) +
  geom_boxplot() +labs (x= "", y= "Accuracy", title="Complexity vs Accuracy Box Plot", size="Size")+geom_count()

accuracy_boxplot
