library(tidyverse)
library(janitor)

aire <-
  airquality %>%
  as_tibble() %>%
  clean_names() %>%
  print()

# Scatter plot de ozono vs temp
ggplot(aire, aes(ozone, temp)) +
  geom_point() +
  theme_bw()
