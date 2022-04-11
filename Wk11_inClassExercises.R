library(sf)
library(rnaturalearth)
library(rnaturalearthdata)
library(tidyverse)

#### Download data ####


#### Working with sf objects ####

stateDat <- read_csv("https://vincentarelbundock.github.io/Rdatasets/csv/pscl/state.info.csv") %>% 
  select(state, year)


#### Make a basic map ####



#### Exercise: Generate a map of the lower 48 state (no Alaska or Hawaii)
#### and highlight the Midwest.



#### Add points ####

#### Exercise: Make a  map of Wisconsin. 
#### Color the state using a color you like with a hex code

iNatWiscBirds <- read_delim("https://raw.githubusercontent.com/jaredhomola/RforNatRes/gh-pages/iNaturalistWiscBirds.csv",
                            delim = ",") %>% 
  filter(common_name == "Tundra Swan") %>% 
  drop_na(latitude, longitude)

tundraSwanLocs <- iNatWiscBirds %>% 
  st_as_sf(., 
           coords = c("longitude", "latitude"), 
           crs = 4326)




### Exercise: Generate a map of states surrounding Lake Michigan and use a paleteer color
### scale to display the number of Chinook salmon (CHS) stocked by each of the states. 
### Add points for all of the Chinook salmon stocking locations.
lakeMichStocking <- read_delim("https://raw.githubusercontent.com/jaredhomola/RforNatRes/gh-pages/lakeMichigan2018Stocking.csv",
                               delim = ",")



#### Labeling points ####
iNatWiscBirds <- read_delim("https://raw.githubusercontent.com/jaredhomola/RforNatRes/gh-pages/iNaturalistWiscBirds.csv",
                            delim = ",") %>% 
  drop_na(latitude, longitude) %>% 
  sample_n(10)




#### Add scale and north arrow #####
library(ggspatial)

