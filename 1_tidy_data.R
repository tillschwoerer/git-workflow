library(tidyverse)

p0 <- read_csv("raw_data/population_aged_0_4_years_total_number.csv") %>% 
  pivot_longer(cols = -country, names_to = "year", values_to = "population" ) %>%
  mutate(age = "0-4")

p05 <- read_csv("raw_data/population_aged_5_9_years_total_number.csv") %>% 
  pivot_longer(cols = -country, names_to = "year", values_to = "population" ) %>% 
  mutate(age = "05-09")

p10 <- read_csv("raw_data/population_aged_10_14_years_total_number.csv") %>% 
  pivot_longer(cols = -country, names_to = "year", values_to = "population" ) %>% 
  mutate(age = "10-14")

p15 <- read_csv("raw_data/population_aged_15_19_years_total_number.csv") %>% 
  pivot_longer(cols = -country, names_to = "year", values_to = "population" ) %>% 
  mutate(age = "15-19")

p20 <- read_csv("raw_data/population_aged_20_39_years_total_number.csv") %>% 
  pivot_longer(cols = -country, names_to = "year", values_to = "population" ) %>% 
  mutate(age = "20-39")

p40 <- read_csv("raw_data/population_aged_40_59_years_total_number.csv") %>% 
  pivot_longer(cols = -country, names_to = "year", values_to = "population" ) %>% 
  mutate(age = "40-59")

p60 <- read_csv("raw_data/population_aged_60plus_years_total_number.csv") %>% 
  pivot_longer(cols = -country, names_to = "year", values_to = "population" ) %>% 
  mutate(age = "60+")

df <- list(p0, p05, p10, p15, p20, p40, p60) %>% bind_rows()
df <- df %>% 
  drop_na %>% 
  mutate(year = as.integer(year))

write_csv(df, "gapminder_tidy.csv")
