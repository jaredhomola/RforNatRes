library(glue)
library(tidyverse)

#### Functions ####
## Write a basic function

## Informal vs formal arguments

## Define default values for arguments.


### Exercise 1: Write a function to calculate the coefficient of variation.
## Coefficient of variation = standard deviation / mean
## Use the function you wrote to calculate the coefficient of 
## variation for all height measurements in the mock data set.

### Mock data set
dat <- tibble(species = sample(c("oak", "maple", "ash", "pine"), 50, replace = TRUE),
              height = sample(20:150, 50, replace = TRUE))

### Conditional behaviors of functions: if else statements
## Want to print a result that says whether the biggest tree in the 
## mock data set is really tall (99th percentile) or not really tall (<99th percentile).



#### Useful functions for dealing with potential errors ####
### Error messages with stopifnot()

## Exercise 2: Use stopifnot() to cause your coefficient of variation 
## function to throw an error if the input isn't numeric



### Error messages with if() then stop()

## Exercise 3: Use an if() then stop() series to cause your 
## coefficient of variation function to throw an error if 
## the input isn't numeric but provide a more useful error message.



#### for() loops ####

## Looping through values in a tibble


## Exercise 4. Loop through the distinct values in dat$species and 
## calculate the coef_var of "height" for each.



#### while() loops ####



## Exercise 5. Use a while loop to sample the dat$height vector 
## repeatedly until it grabs a value at or above the 98th quantile.
## Print the randomly selected height value for each loop made.






