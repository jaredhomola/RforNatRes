library(tidyverse)

##### Multiple linear regression #####
### Analysis goal: Identify factors associated with 
### global variation in life expectancy. 
lifeExp <- read_csv("https://gist.githubusercontent.com/aishwarya8615/89d9f36fc014dea62487f7347864d16a/raw/8629d284e13976dcb13bb0b27043224b9266fffa/Life_Expectancy_Data.csv") %>% 
  mutate(Population = as.double(Population)) %>% 
  filter(Year == 2013) %>% 
  drop_na()


## Check for multicollinearity among explanatory variables
library(GGally)

## Create the model

## Plot residuals to investigate assumptions

## Use VIF to check for multicollinearity




#### ANCOVA ####
## Analysis goal: determine whether exercise reduces anxiety
library(datarium)
anxietyDat <- anxiety %>%
  select(id, group, t1, t3) %>%
  rename(pretest = t1, posttest = t3)

## Plot raw data ANOVA style

## Plot raw data ANCOVA style


### Fit the model ###
## Try the ANOVA ##

## Try the ANCOVA ##

## Check assumptions of the better model ##





##### Model selection #####
### Analysis goal: Determine the optimal set of 
### variables for modeling life expectancy
library(MASS)
lifeExp

## First, declare a global model 

## Run AIC routine

## Fit the optimized model

## Check assumptions



#### Repeated measures ANOVA ####
## Analysis goal: Determine whether the mass of round goby samples
## collected from two populations change through time after being
## preserved in ethanol
library(nlme)

gobyDat <- read_csv("https://raw.githubusercontent.com/jaredhomola/gobyPreservation/main/extData/ethanolExperimentData.csv") %>% 
  dplyr::select(pop, ind, mass, measurementInterval)


### How much temporal autocorrelation is there?


### Specify the generalized least squares model


### Check out the results of the optimal model


### Evaluate assumptions






#### Practice if there's time ####
ciscoDat <- read_csv("https://raw.githubusercontent.com/jaredhomola/RforNatRes/gh-pages/inlandCisco.csv")
birdDat <- read_csv("https://raw.githubusercontent.com/jaredhomola/Data_Course/master/Data/wingspan_vs_mass.csv") %>% 
  dplyr::select(-1)