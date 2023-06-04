library(dplyr)
library(ggplot2)

df <- data.frame(
  Year = c("2024-01-01", "2025-01-01", "2026-01-01", "2027-01-01", "2028-01-01", "2029-01-01", "2030-01-01"),
  Total_Population = c(8.057781e+09, 8.137097e+09, 8.216196e+09, 8.295295e+09, 8.374394e+09, 8.453710e+09, 8.532808e+09)
)

df <- df %>%
  mutate(Growth_Percentage = (Total_Population - lag(Total_Population)) / lag(Total_Population) * 100)

print(df)