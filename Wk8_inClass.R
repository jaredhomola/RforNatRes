library(tidyverse)

#### purrr::map ####
# Create a practice data set
df_xyz <- tibble(
  x = rnorm(10),
  y = rnorm(10),
  z = rnorm(10)
)

## Exercise: write a for loop to calculate the sum of each variable's values

## Use purrr:map() to run the loop

# note: purrr is a tidyverse package so it supports pipes


## Exercise: Write a function that squares an input value.
## Use purrr to run it on df_xyz

# purrr shorthand


#### purrr:map_* ####


#### purrr:map_at() and purrr:map_if() ####




#### Exercises with demographic data ####
demoDat <- read_csv("https://raw.githubusercontent.com/swcarpentry/r-novice-gapminder/gh-pages/_episodes_rmd/data/gapminder-FiveYearData.csv")

## Ex 1: Use map_chr to get the class of each variable


## Ex 2: Use one of the map_* functions to get a count of the number of distinct values for each variable


### Ex 3: Use map_if to calculate the mean of each numeric variable


### Ex. 4: Use map_at to calculate the mean of lifeExp and gdpPercap


### Ex. 5: Calculate the square of the mean of each numeric variable






