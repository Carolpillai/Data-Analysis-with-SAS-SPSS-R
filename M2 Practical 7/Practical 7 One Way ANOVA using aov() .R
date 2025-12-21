# Load data set
student_data <- read.csv("C:/Users/Carol/Downloads/Student_Performance.csv")

# Convert school_type to factor
student_data$school_type <- as.factor(student_data$school_type)

# One-way ANOVA
anova_result <- aov(study_hours ~ school_type, data = student_data)

# Display ANOVA table
summary(anova_result)

