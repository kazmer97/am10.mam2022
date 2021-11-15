library(tidyverse)
library(vroom)
library(here)

# to get the data as of Nov 14, 2021, just read the csv saved in the data folder
covid_data <- vroom(here::here("data", "covid_data.csv"))  
  
# if you want to get an up-to-date version, run the following lines
url <- "https://covid.ourworldindata.org/data/owid-covid-data.csv"
covid_data <- vroom(url) %>% 
  mutate(perc = round(100 * people_fully_vaccinated / population, 2))


