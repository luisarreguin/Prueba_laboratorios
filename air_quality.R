library(tidyverse)
library(janitor)

aire <-
  airquality %>%
  # esto no va
  # as_tibble() %>%
  clean_names() %>%
  print()

# Scatter plot de ozono vs temp
ggplot(aire, aes(ozone, temp)) +
  geom_point() +
  theme_bw()
