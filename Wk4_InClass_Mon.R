############# Week 4: Monday in class exercises ###############

library(lterdatasampler)
library(tidyverse)

## All exercises will use lterdatasampler::hbr_maples

#### dyplyr::select() ####
# 1. Only year, transect, and stem_length
# 2. All columns from year to sample
# 3. Rearrange columns to the order of: year, sample, watershed, elevation, transect
# 4. All columns with word "leaf"
# 5. Year and all columns with "leaf"
# 6. All columns except corrected_leaf_area 


#### dplyr::pull() ####
# 1. Subset just data from the year column
# 2. Subset just data from the leaf_dry_mass columns


#### dplyr::relocate() ####
# 1. First subset the data to just year:sample, then move sample to the first column position
# 2. Using original year:sample tibble, move the sample column to the third positions


#### dplyr::slice() ####
# 1. Subset observation 10 through 20

## dyplyr::slice_sample() ##
# 1. Subset a random set of 10 observations
# 2. Subset a random set of 25% of the observations

## dplyr::slice_head() and dplyr::slice_tail() ##
# 1. Subset the first 5 observations
# 2. Subset the last 10 observations
# 3. Subset the first 20% of observations


#### dplyr::distinct ####
# 1. Generate values of the transect variable
# 2. Generate all unique combinations of watershed, elevation, and transect
# 3. Subset unique values of transect while retaining other variables


#### dplyr::filter ####
# 1. Subset all observations with a stem_length greater than 90
# 2. Subset all observations with a stem_length greater than 90 and a leaf1area less than 10
# 3. Subset all observations with from 2003 in the reference watershed at a mid elevation


#### dplyr::add_rows() ####
# 1. First, subset a random 10 observations of the hbr_maples tibble and assign it to a new variable
# 2. Add your new tibble to the bottom of hbr_maples
# 3. Now use a slice() operation to see whether your code worked correctly


#### dplyr::arrange() ####
# 1. Arrange the hbr_maples tibble by stem_length from smallest to largest
# 2. Arrange the hbr_maples tibble by stem_length from largest to smallest


#### dplyr::summarize() ####
# 1. Use summarize to calculate the average stem_length
# 2. Determine the standard deviation of the leaf_dry_mass


#### dplyr::count() ####
# 1. How many observations of each watershed type are in hbr_maples?
# 2. How many observations of unique watershed and elevation combinations are there?


#### dplyr::group_by() ####
# 1. Use group_by() and summarize() to calculate the mean stem_length for each elevation type
# 2. Modify the above to calculate mean_stem_length by elevation and watershed. 

