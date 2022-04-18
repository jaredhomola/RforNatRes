library(sf)
library(rnaturalearth)
library(rnaturalearthdata)
library(ggspatial)
library(ggrepel)
library(cowplot)
library(tidyverse)


##### Map 1: Great Lakes round goby ######
### Data at 



##### Map 2: Southern Green Bay with bathymetry raster ######
library(raster)
library(spatstat)

#### Origin of raster: https://www.ncei.noaa.gov/maps/grid-extract/ ####
### Raster data at: 
southGB <- raster()

### Alternative Wisconsin outline at: https://data-wi-dnr.opendata.arcgis.com/datasets/wi-dnr::wisconsin-state-boundary-24k/about

coords <- tibble(
  site = c("A", "B", "C", "D"),
  long = c(-87.752, -87.954, -87.887, -87.989),
  lat = c(44.73, 44.67, 44.61, 44.56)) %>% 
  st_as_sf(., 
           coords = c("long", "lat"), 
           crs = 4326)



###### Map 3: Google map of Schmeeckle Reserve #####
### Google API key registration instruction: https://www.littlemissdata.com/blog/maps ###
library(ggmap)
library(ggsn)
library(rphylopic)



