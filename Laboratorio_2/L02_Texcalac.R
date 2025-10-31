# LERA: Aquí debiste agregar un encabezado
# Cargo las librerias
library(tidyverse)
library(janitor)

# Cargo malla airquality
aire <-
  airquality %>%
  as_tibble() %>%
  clean_names() %>%
  print()

# Scatter plot de ozono vs temp
ggplot(aire, aes(ozone, temp)) +
  geom_point() +
# LERA: el tema era theme_bw()
  theme_bw()
  # theme_light() 