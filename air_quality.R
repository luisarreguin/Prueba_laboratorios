# ============================================================================ #
# Proyecto: Prueba de ramas
# Autor: Clase R 2025
# Fecha: 31/10/2025
# ============================================================================ #

# Cargo las librerias
library(tidyverse)
library(janitor)

# Cargo malla airquality
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
