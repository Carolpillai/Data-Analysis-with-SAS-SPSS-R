# Load Data set
student_alcohol <- read.csv("C:/Users/Carol/Downloads/student-mat.csv")

# Check Column Names
colnames(student_alcohol)

# Convert Relevant Columns to Factors

student_alcohol$sex <- as.factor(student_alcohol$sex)
student_alcohol$internet <- as.factor(student_alcohol$internet)

# Two-Way ANOVA
anova_two <- aov(G3 ~ sex * internet, data = student_alcohol)
summary(anova_two)
interaction.plot(student_alcohol$internet,
                 student_alcohol$sex,
                 student_alcohol$G3,
                 xlab = "Internet Access",
                 ylab = "Mean Final Grade (G3)",
                 trace.label = "Gender",
                 main = "Interaction Plot: Gender and Internet Access on G3",
                 col = c("blue","red"),
                 lty = 1:2,
                 pch = c(19,17))
