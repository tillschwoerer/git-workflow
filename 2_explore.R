library(tidyverse)
df <- read_csv("gapminder_tidy.csv")

theme_set(theme_classic())


# Age distribution over time in 4 countries

p <- df %>% 
  filter(country %in% c("Germany", "United States", "Japan", "Peru")) %>%
  ggplot(aes(x = year, y = population, group = age, color = age)) +
  geom_line() + geom_point() +
  facet_wrap(~country, scales = "free_y") +
  scale_colour_brewer(palette = "Set1")
p
ggsave("plot.png", p)


# Top 10 countries in 1950 wrt total population

# Top 10 countries in 2100 wrt total population

# Top 10 countries with respect to the change in total population between 1950 and 2100

# etc.
