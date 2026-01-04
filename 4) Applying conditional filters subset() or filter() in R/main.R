install.packages("dplyr")
install.packages("readr")

library(dplyr)
library(readr)

housing <- read_csv("C:/Users/CarolPillai/Downloads/Housing.csv")

str(housing)

high_price <- subset(housing, price > 10000000)
cat("Rows:", nrow(high_price), "\n")
summary(high_price$price)

large_high_price <- subset(housing, price > 10000000 & area > 9000)
cat("Rows:", nrow(large_high_price), "\n")
head(large_high_price)

guest_or_basement <- subset(housing, guestroom == "yes" | basement == "yes")
cat("Rows:", nrow(guest_or_basement), "\n")
head(guest_or_basement)

furnished_only <- subset(housing, furnishingstatus == "furnished")
cat("Rows:", nrow(furnished_only), "\n")

bathroom_filter <- housing |>
  filter(bathrooms > 3)
cat("Rows:", nrow(bathroom_filter), "\n")
summary(bathroom_filter$bathrooms)

ac_parking_filter <- housing |>
  filter(airconditioning == "yes", parking >= 2)
cat("Rows:", nrow(ac_parking_filter), "\n")
head(ac_parking_filter)

stories_filter <- housing |>
  filter(stories %in% c(1, 2, 3))
cat("Rows:", nrow(stories_filter), "\n")
table(stories_filter$stories)

mainroad_affordable <- housing |>
  filter(mainroad == "yes", price < 8000000)
cat("Rows:", nrow(mainroad_affordable), "\n")

