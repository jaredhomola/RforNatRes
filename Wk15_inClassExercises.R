library(lterdatasampler)
library(broom)
library(ggrepel)
library(tidyverse)

### Principal component analysis ###
## Analysis goal: Summarize variation in tree measurements

## Look at the data
lterdatasampler::hbr_maples 

## Run the analysis


## Plot it

  
## PCA scree plot

## Practice PCA
ruralUrb <- read_csv("https://raw.githubusercontent.com/jaredhomola/WFUrbanAdaptation/master/extData/envdata.csv")



  
#### K-means clustering ####
## Goal: Identify clusters of similar plant measurements
#install.packages("factoextra")
library(factoextra)

## Generate input data (no NAs)
mapleDat <- lterdatasampler::hbr_maples %>% 
  drop_na() 

## Set up the K-means input data


## How many clusters (K)?


## Conduct K-means clustering analysis


## Plot it
library(ggpubr)




#### NMDS ####
## Analysis goal: Determine whether bacteria communities vary across Lake Michigan tributaries
## and identify correlates of that variation.

## Community data
bact.dat <- read_table("https://raw.githubusercontent.com/ScribnerLab/LakeMichTribBacteria/main/extData/3.%20Bacterial_OTU_Matrix.txt") %>% 
  separate(Group,
           into = c("river", NA)) %>% 
  distinct(river,
           .keep_all = TRUE) %>% 
  select(1:201) %>% 
  filter(river != 'PereMarquette')

## Environmental data
river.dat <- read_csv("https://raw.githubusercontent.com/jaredhomola/RforNatRes/gh-pages/riverVars.csv") %>% 
  select(-COMID) %>% 
  filter(River %in% bact.dat$river) %>% 
  mutate(side = c(rep("west", 5), rep("north", 2), 
                  rep("west", 1), rep("east", 7), rep("north", 2)) %>% 
           as_factor) %>% 
  arrange(match(River, bact.dat$river)) 

## Transform community data into relative abundances


## Perform NMDS


## Add in environmental vectors


## Get tibble of NMDS coordinates


## Get information for environmental vectors


## Plot NMDS data using ggplot

