##############################################
#### In class exercises for Monday Feb 21 ####
##############################################
library(lterdatasampler)
library(tidyverse)


#### Working with row names #####
## column_to_rownames() ##

## rownames_to_column() ##


#### Adding columns ####
## mutate() ##

## transmute() ##


#### Renaming columns ####
## rename() ##

#### Combining data sets ####
## bind_rows ##

## bind_cols ##


#### Joining data sets ####
## Data for joining exercises ##
tib.x <- tibble(ID = 1:2,
                X1 = c("a1", "a2"))
tib.y <- tibble(ID = 2:3, 
                X2 = c("b1", "b2"))

## left_join() ##

## right_join() ##

## inner_join() ##

## full_join() ##

## semi_join() ##

## anti_join() ##

