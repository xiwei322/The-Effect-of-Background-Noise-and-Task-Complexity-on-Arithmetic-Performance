  library(ggplot2)
  
  
  data <- read.csv("237 Project.csv")
  data$Problem_Set <- factor(data$Problem_Set, levels = c("Set 1", "Set 2", "Set 3", "Set 4"), labels=(c("Simple+Noise", "Simple+No Noise", "Complex+Noise", "Complex+No Noise")))
  
  
  dataModel<-lm(Accuracy_Percentage~Math_Complexity*Noise_Condition, data=data)
  summary(dataModel)
  anova(dataModel)
  
  
  data$residuals <- resid(dataModel)
  data$standardized.residuals<-rstandard(dataModel)
  data$student<-rstudent(dataModel)
  data$fitted<-fitted(dataModel)
  
  ggplot(data, aes(x=fitted, y=residuals, color=Problem_Set)) +
    geom_point() +
    labs(x="Fitted Values", y="Residuals", title="Residual Plot for Accuracy Percentage", color="Condition", size="Size") +
    geom_count()
  