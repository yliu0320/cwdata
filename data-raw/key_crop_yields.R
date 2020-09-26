## code to prepare `key_crop_yields` dataset goes here

library(readr)
library(janitor)
library(tidyr)
library(magrittr)
library(dplyr)

key_crop_yields <- read_csv("key_crop_yields.csv") %>%
  clean_names() %>%
  pivot_longer(
    cols = -c("year","code","entity"),
    names_to = "crop",
    values_to = "tonnes_per_hectare",
    names_pattern = "([^_]+)"
  )%>%
  rename(country=entity)

usethis::use_data(key_crop_yields, overwrite = TRUE)
