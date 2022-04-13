library(sf)
library(rnaturalearth)
library(rnaturalearthdata)
library(tidyverse)

#### Download data ####


#### Working with sf objects ####


stateDat <- read_csv("https://vincentarelbundock.github.io/Rdatasets/csv/pscl/state.info.csv") %>% 
  select(state, year)



#### Make a basic map ####



#### Exercise: Generate a map of the lower 48 (no Alaska or Hawaii)
#### and highlight the Midwest.




#### Add points ####
#### Exercise: Make a map of Wisconsin. 
#### Color the state using a color you like with a hex code
iNatWiscBirds <- read_delim("https://raw.githubusercontent.com/jaredhomola/RforNatRes/gh-pages/iNaturalistWiscBirds.csv",
                            delim = ",") %>% 
  filter(common_name == "Tundra Swan") %>% 
  drop_na(latitude, longitude)



#### Labeling points ####
iNatWiscBirds <- read_delim("https://raw.githubusercontent.com/jaredhomola/RforNatRes/gh-pages/iNaturalistWiscBirds.csv",
                            delim = ",") %>% 
  drop_na(latitude, longitude) %>% 
  sample_n(10)



#### Add scale and north arrow #####
library(ggspatial)




#### Creating inset maps ####
library(cowplot)




#### Working with data from outside Natural Earth ####
## Download data: https://gisdata.wisc.edu/public/WI_Bear_Mgmt_Zones_2014.zip
## Then unzip

