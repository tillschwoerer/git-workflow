library(tidyverse)
df <- read_rds("gapminder_tidy.Rds")

theme_set(theme_classic())

p <- df %>% 
  filter(country %in% c("Germany", "Angola", "Japan", "Peru")) %>%
  ggplot(aes(x = year, y = population, group = age, color = age)) +
  geom_line() + geom_point() +
  facet_wrap(~country, scales = "free_y") +
  scale_colour_brewer(palette = "Set1")
p
ggsave("plot.png", p)



