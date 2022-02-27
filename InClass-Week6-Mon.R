#########################################
### In class exercises for Mon Feb 28 ###
#########################################

#### lubridate ####
library(lubridate)
library(tidyverse)

# Set up dates as strings (characters

# Extract elements of dates and times

# Do math with time

# Do math with time in a tibble
install.packages("nycflights13")
nycflights13::flights %>% 
  select(year, month, day, carrier, flight, time_hour) 
  


#### googlesheets4 ####
install.packages("googlesheets4")
library(googlesheets4)



#### glue ####
install.packages("glue")
library(glue)



#### forcats #####
animals <- c("turkey", "deer", "bat", "bear", "deer", "deer", "turkey")
plants.factor <- c("maple", "fern", "oak", "oak", "maple") 

# Inspect factors

# Combine factors

# Modifying the order of factors

# Drop factor levels



#### Stringr ####
install.packages("stringr")
library(stringr)
stringr::sentences

# Detect strings 

# Working with alternates

# Modify string lengths 

# Mutate strings 

# Regular expressions
stringr::sentences %>% 
  as_tibble() %>% 
  mutate(excitedVersion = str_replace(value, "\\.", "\\!"))
