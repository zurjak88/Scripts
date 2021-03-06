library(datasets)
library(magrittr)
library(ggvis)
library(dplyr)

# Rewrite the code below so that only the points layer uses the shape property.
pressure %>%
  ggvis(~temperature, ~pressure) %>%
  layer_lines(stroke := "skyblue") %>%
  layer_points( shape := "triangle-up")

# Refactor the code for the graph below to make it as concise as possible
pressure %>%
  ggvis(~temperature, ~pressure, stroke := "skyblue",
              strokeOpacity := 0.5, strokeWidth := 5) %>%
  layer_lines() %>%
  layer_points( fill = ~temperature,
              strokeOpacity := 0.5,
              shape := "triangle-up",
                size := 300)
