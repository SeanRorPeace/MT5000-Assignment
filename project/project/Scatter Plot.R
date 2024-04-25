library(plotly)
library(ggplot2)
library(tidyverse)
#Scatterplot_1
scatterplot_1 <- data_join %>%
  ggplot() +
  aes(obs_value, time_period, color = region, size = obs_value) +
  geom_point(alpha=0.15) +
  labs(x = "Tests Permorfed", y = "Years", title = "Vacinations Through The Years") +
  theme_classic()
ggplotly(scatterplot_1)
