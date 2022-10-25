library(tidyverse)

df <- read.csv("ed-status.csv")

head(df)

col_pct <- function(x) {
    round(x / sum(x) * 100, 1)
}

df %>%
    mutate(across(Total:nonprofit, ~ col_pct(.x), names = "{.col}_pct"))