library(ggplot2)
library(tidyverse)
unicef_indicator_2 <- read_csv("unicef_indicator_2.csv")
unicef_metadata <- read_csv("unicef_metadata.csv")
readr::spec(unicef_metadata)
readr::spec(unicef_indicator_2)
#Data Merge (Country)
merge_data <- merge(unicef_metadata, unicef_indicator_2, by = "country", all = TRUE)
data_join_1960 <- unicef_metadata %>%
  filter(year == 1960)
names(data_join_1960)[names(data_join_1960) =="Life expectancy at birth, total (years)"] <- "Life_Exp"
world_map <- map_data("world")
view(world_map)
#Map of Life Exp 1
map_data_join <- full_join(data_join_1960, world_map, by = c("country" = "region"))
ggplot(map_data_join) +
  aes(x = long, y = lat, group = group, fill = Life_Exp) +
  geom_polygon() +
  scale_fill_gradient(low = "orange", high = "green4", na.value = "grey") +
  labs(title = "Worldwide Life Expectancy 1960") +
  theme_classic()
