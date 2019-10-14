%>% 
  mutate(age = ifelse(age %in% c("0-4","05-09","10-14","15-19"), "0-19", age)) %>%
  group_by(country, year, age) %>%
  summarise(population = sum(population)) %>%
  ungroup