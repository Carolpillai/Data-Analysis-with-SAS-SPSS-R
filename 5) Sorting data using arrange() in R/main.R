library(dplyr)

boston <- read.csv("C:/Users/Carol/Downloads/Housing.csv")

boston_sorted_medv <- boston |>
  arrange(price)

head(boston_sorted_medv, 5)

boston_sorted_crim_desc <- boston |>
  arrange(desc(area))

head(boston_sorted_crim_desc, 5)

boston_multi_sort <- boston |>
  arrange(bedrooms, desc(price))

head(boston_multi_sort, 10)

large_homes_by_tax <- boston |>
  filter(bathrooms > 3) |>
  arrange(area)

cat("Top 5 largest homes by lowest area:\n")
print(large_homes_by_tax |> select(area, bathrooms, price) |> head(5))


