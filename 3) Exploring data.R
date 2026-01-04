library(readr)
library(psych)

my_data <- read.csv("C:/Users/CarolPillai/Downloads/Housing.csv")

colnames(my_data) <- c(
  "price",
  "area",
  "bedrooms",
  "bathrooms",
  "stories",
  "mainroad",
  "guestroom",
  "basement",
  "hotwaterheating",
  "airconditioning",
  "parking",
  "prefarea",
  "furnishingstatus"
)

head(my_data)

summary(my_data)

str(my_data)

describe(my_data)

