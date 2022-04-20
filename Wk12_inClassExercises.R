library(lterdatasampler)
library(tidyverse)

#### Model validation / checking assumptions ####
### Evaluating normality ###
## Visual assessment ##
# Histogram #
lterdatasampler::knz_bison 

## QQ plots
lterdatasampler::knz_bison 


## Statistical assessment ##
lterdatasampler::knz_bison 


#### Evaluating homogeneity of variance ####
## Simulate some data
testDat <- tibble(var = rnorm(100, mean = 12, sd = 8), 
                  category = rep(c("set1", "set2"), each = 50))

library(broom)

library(rstatix)


#######################################################################################
#######################################################################################

##### T-tests #####
#### Single sample t-test: Is the diameter at breast height (DBH) of a stand of trees
#### different from the statewide mean?
## Make data
stand.dbh <- rnorm(40, mean = 15, sd = 2) %>% 
  as_tibble() %>% 
  rename(dbh = value)
state.dbh <- rnorm(1000, mean = 17, sd = 2) %>% 
  mean(.)

## Test assumption of normality

## Test assumption of homogeneity of variances

## Run analysis

## Make a plot



#### Two-sample T-test: Are the fish longer in Lake 1 or Lake 2?
## Make data
fish <- tibble(fish.lake1 = rnorm(50, mean = 12, sd = 8), 
               fish.lake2 = rnorm(50, mean = 14, sd = 8))

## Test assumption of normality

## Test assumption of homogeneity of variances 

## Run analysis 

## Plot it



#### Paired t-test: Did a specific set of fish grow from one year to the next?
## Make some data
fish <- tibble(fishID = 1:50,
  length.year1 = rnorm(50, mean = 12, sd = 3), 
  length.year2 = rnorm(50, mean = 14, sd = 3)) 

## Test assumption of normality

## Test assumption of homogeneity of variances 

## Run analysis ##

## Plot it ##

#######################################################################################
#######################################################################################


##### ANOVA #####
### Analysis goal: Use the lterdatasample::hbr_maples dataset to determine
### whether leaf1area differs among the three transects measured in the 
### low elevation reference watershed in 2003. 

### Check assumptions ###
## Test assumption of normality
lterdatasampler::hbr_maples 

## Test assumption of homogeneity of variances 

## Perform 1-way ANOVA

## Plot it



#### Two-way ANOVA ####
### Analysis goal: Determine whether the Great Lakes basin or the
### habitat type influence observed heterozygosity of Great Lakes 
### round goby populations. 
gobyDat <- read_table("https://raw.githubusercontent.com/jaredhomola/RforNatRes/gh-pages/gobyData.txt",
                      col_types = "????ff????") %>% 
  filter(basin %in% c("huron", "michigan", "erie"))


### Check assumptions ###
## Test assumption of normality

## Test assumption of homogeneity of variances 

## Perform two-way ANOVA

## Plot it

## Post-hoc test
