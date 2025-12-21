# Load data set
lung_data <- read.csv("C:/Users/Carol/Downloads/Lung_Cancer.csv")

lung_data$SMOKING <- as.factor(lung_data$SMOKING)
lung_data$LUNG_CANCER <- as.factor(lung_data$LUNG_CANCER)

# Create contingency table
smoke_lung_table <- table(lung_data$SMOKING, lung_data$LUNG_CANCER)
smoke_lung_table

# Chi-Square Test
chi_result <- chisq.test(smoke_lung_table)
chi_result

# Visualization: Bar Plot
library(ggplot2)
ggplot(lung_data, aes(x = SMOKING, fill = LUNG_CANCER)) +
  geom_bar(position = "dodge") +
  labs(title = "Lung Cancer Occurrence by Smoking Status",
       x = "Smoking Status",
       y = "Count",
       fill = "Lung Cancer") +
  theme_minimal() +
  scale_fill_manual(values = c("lightblue", "red"))
