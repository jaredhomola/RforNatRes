library(lterdatasampler)
library(tidyverse)


##### ANOVA #####
### Analysis goal: Use the lterdatasample::hbr_maples dataset to determine
### whether leaf1area differs among the three transects measured in the 
### low elevation reference watersheds in 2003. 

### Check assumptions ###


### Perform 1-way ANOVA ###


### Plot it ###



#### Two-way ANOVA ####
### Analysis goal: Determine whether the Great Lakes basin or the
### habitat type influence observed heterozygosity of Great Lakes 
### round goby populations. 
gobyDat <- read_table("https://raw.githubusercontent.com/jaredhomola/RforNatRes/gh-pages/gobyData.txt",
                      col_types = "????ff????") %>% 
  filter(basin %in% c("huron", "michigan", "erie"))


### Check assumptions ###


### Perform two-way ANOVA ###


### Plot it ###


### Post-hoc test ###


### Check for interaction ###



##### Simple linear regression #####
### Analysis goal: Determine whether the knz_bison
### weights are influenced by their year of birth

### Perform the simple linear regression ###


### Look at the results ###


### Check assumptions




##### Multiple linear regression #####
### Analysis goal: Identify potential influences of 
### global variation in life expectancy. 
lifeExp <- read_csv("https://gist.githubusercontent.com/aishwarya8615/89d9f36fc014dea62487f7347864d16a/raw/8629d284e13976dcb13bb0b27043224b9266fffa/Life_Expectancy_Data.csv") %>% 
  mutate(Population = as.double(Population)) %>% 
  filter(Year == 2013) %>% 
  drop_na()

### Check for multicollinearity among predictor variables ###


### Create the model ###


### Plot residuals to investigate assumptions ###


## Use VIF to check for mutlicollinearity ###



##### Model selection #####
library(MASS)


#### Practice if there's time ####

