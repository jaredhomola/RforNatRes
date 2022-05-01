library(modelr)
library(tidyverse)

#### Permutation test "by hand" ####
tickDat <- tibble(Portage = rnorm(40, mean = 10, sd = 3) %>% round(),
       Marathon = rnorm(40, mean = 9, sd = 3) %>% round()) %>% 
  pivot_longer(cols = 1:2, 
               names_to = "county",
               values_to = "nTicks")

## Plot it


## What is the difference in the mean counts?


## Perform permutation test using a loop


## Plot the result


### Calculate the p-value

  
  

#### Perform permutation test using the tidymodels package 'infer' ####
## Establish null distribution


## Plot null distribution


## Calculate p-value


## Perform bootstrapping to evaluate confidence 

  
## Plot the bootstrap distribution and CIs



### Permutation and bootstrap with regression ###
wfDat <- read_csv("https://raw.githubusercontent.com/jaredhomola/RforNatRes/gh-pages/Genetic%20diversityWF.csv")

## Create model


## Establish null distribution


## Calculate p-value


## Plot p-value


## Calculate confidence using bootstrapping


## Plot the bootstrap distribution and CIs





### Practice if time
#### T-test ###
gobyDat <- read_table("https://raw.githubusercontent.com/jaredhomola/RforNatRes/gh-pages/gobyData.txt") %>% 
  filter(basin %in% c("michigan", "huron"))




#### Linear regression ####
ciscoDat <- read_csv("https://raw.githubusercontent.com/jaredhomola/RforNatRes/gh-pages/inlandCisco.csv")
