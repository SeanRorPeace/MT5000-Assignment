#Barchart 
library(plotly)
library(ggplot2)
library(tidyverse)
colnames(data_join)
names(data_join)[names(data_join) =="GNI (current US$)"] <- "GNI"
barchart_1 <- data_join %>%
  ggplot() +
  aes(year, GNI, group = region, color = region) +
  geom_col()+
  labs(title = "GNI Per Region") +
  theme_classic()
ggplotly(barchart_1)
