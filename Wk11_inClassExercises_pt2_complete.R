library(sf)
library(rnaturalearth)
library(rnaturalearthdata)
library(ggspatial)
library(ggrepel)
library(cowplot)
library(tidyverse)


##### Map 1: Great Lakes round goby ######
### Make main map ###
gobyDat <- read_table("https://raw.githubusercontent.com/jaredhomola/RforNatRes/gh-pages/gobyData.txt") %>% 
  st_as_sf(., 
           coords = c("long", "lat"), 
           crs = 4326)

greatLakesStates <- ne_states(returnclass = 'sf') %>% 
  filter(name %in% c("Michigan", "Wisconsin", "Indiana", "Illinois",
                     "Minnesota", "Ontario", "Ohio", "New York", "Pennsylvania",
                     "Iowa", "Québec"))

greatLakes <- ne_download(scale = 10, 
                     type = 'lakes', 
                     category = 'physical', 
                     returnclass = "sf") %>% 
  filter(name %in% c("Lake Michigan", "Lake Superior", "Lake Huron", "Lake Erie", "Lake Ontario", "Lake Saint Clair"))


mainMap <- greatLakesStates %>% 
  ggplot() +
  geom_sf(fill = "#dbecde") +
  geom_sf(data = greatLakes,
          fill = "#b9cbe4") +
  geom_sf(data = gobyDat,
          size = 4,
          aes(color = mean.Hobs,
              shape = habitat)) +
  coord_sf(ylim = c(41, 48),
           xlim = c(-92, -77)) +
  geom_label_repel(data = gobyDat,
                   aes(label = pop, geometry = geometry),
                   stat = "sf_coordinates",
                   min.segment.length = 0,
                   segment.curvature = -0.1,
                   segment.ncp = 3,
                   segment.angle = 20) +
  scale_shape_discrete(name = "Habitat",
                       labels = c("Great Lakes", "Tributary")) +
  scale_color_continuous(name = "Mean heterozygosity") +
  annotation_scale(text_cex = 1.5) +
  ylab("Latitude") +
  xlab("Longitude") +
  annotation_north_arrow(style = north_arrow_nautical,
                         pad_x = unit(0.4, "in"),
                         pad_y = unit(0.3, "in"),
                         height = unit(1, "in"),
                         width = unit(1, "in")) +
  theme_bw(base_size = 18) +
  NULL


countries <- ne_countries(scale = 50, 
                          returnclass = "sf") %>% 
  filter(name == "United States" | name == "Canada" | name == "Mexico")

insetMap <- countries %>% 
  ggplot() +
  geom_sf() +
  geom_sf(data = greatLakes,
          fill = "white") +
  coord_sf(ylim = c(20, 70),
           xlim = c(-140, -50)) +
  annotate("rect", 
           xmin = -93, xmax = -75, 
           ymin = 41, ymax = 49.5,
           color = "red",
           size = 1.2,
           fill = NA) +
  theme_void() +
  theme(panel.border = element_rect(color = "black", 
                                    size = 2,
                                    fill = NA),
        panel.background = element_rect(fill = "white"))

ggdraw() +
  draw_plot(mainMap) +
  draw_plot(insetMap, 
            x = 0.5, y = 0.62, 
            width = 0.35, height = 0.35) 


##### Map 2: Southern Green Bay with bathymetry raster ######
library(raster)
library(spatstat)
library(paletteer)

#### Origin of raster: https://www.ncei.noaa.gov/maps/grid-extract/ ####

southGB <- raster("https://github.com/jaredhomola/RforNatRes/blob/gh-pages/southernGbBathymetry.tif?raw=true")
southGBRast.tib <- as.data.frame(southGB, xy = TRUE) %>% 
  as_tibble() %>% 
  rename(pixelValue = exportImage)

wisc <- states %>% filter(name == "Wisconsin")

wiscAlt <- read_sf("YOUR FILE LOCATION/Wisconsin_State_Boundary_24K.shp") %>%
  st_transform(crs = 4326)

coords <- tibble(
  site = c("A", "B", "C", "D"),
  long = c(-87.752, -87.954, -87.887, -87.989),
  lat = c(44.73, 44.67, 44.61, 44.56)) %>% 
  st_as_sf(., 
           coords = c("long", "lat"), 
           crs = 4326)

mainMap <- wiscAlt %>% 
  ggplot() +
  geom_raster(data = southGBRast.tib, aes(x = x, y = y, fill = pixelValue)) +
  geom_sf(fill = "#dbecde") +
  geom_sf(data = coords) +
  geom_label_repel(data = coords,
                   aes(label = site, geometry = geometry),
                   stat = "sf_coordinates") +
  coord_sf(ylim = c(min(rast_df$y), max(rast_df$y)),
           xlim = c(min(rast_df$x), max(rast_df$x)),
           expand = FALSE) +
  scale_fill_paletteer_c(`"grDevices::Heat"`) +
  annotation_north_arrow(location = "br",
                         pad_y = unit(0.4, "in")) +
  annotation_scale(location = "br") +
  xlab("Longitude") +
  ylab("Latitude") +
  theme_bw() +
  guides(fill = guide_colorbar(title="Depth (m)"))             ### If using paletteer, must do this for title
  

insetMap <- wiscAlt %>% 
  ggplot() +
  geom_sf() +
  annotate("rect", 
           xmin = -88.2, xmax = -87.4, 
           ymin = 44.5, ymax = 45,
           color = "red",
           size = 1.2,
           fill = NA) +
  theme_void() +
  theme(panel.border = element_rect(color = "black", 
                                    size = 2,
                                    fill = NA),
        panel.background = element_rect(fill = "white"))

ggdraw() +
  draw_plot(mainMap) +
  draw_plot(insetMap, 
            x = 0.5, y = 0.2, 
            width = 0.35, height = 0.35) 



###### Map 3: Google map of Schmeeckle Reserve #####
### Google API key registration instruction: https://www.littlemissdata.com/blog/maps ###
library(ggmap)
library(ggsn)
library(rphylopic)

ggmap::register_google(key = "YOUR KEY HERE")

map <- get_googlemap(center = c(-89.562, 44.538), 
                     zoom = 16,
                     maptype = "satellite")

coords <- tibble(long = rnorm(5, -89.562, 0.001),
                 lat = rnorm(5, 44.538, 0.001)) 

mainMap <- map %>% 
  ggmap() +
  geom_point(data = coords,
             aes(x = long, y = lat),
             color = "red",
             size = 2) +
  geom_line(data = coords,
            aes(x = long, y = lat),
            color = "red") + 
  ylab("Latitude") +
  xlab("Longitude") +
  theme_bw()

insetMap <- wiscAlt %>% 
  ggplot() +
  geom_sf() +
  geom_point(aes(x = -89.562, y = 44.538),
             size = 4) +
  theme_void() +
  theme(panel.border = element_rect(color = "black", 
                                    size = 2,
                                    fill = NA),
        panel.background = element_rect(fill = "white"))

ggdraw() +
  draw_plot(mainMap) +
  draw_plot(insetMap, 
            x = 0.6, y = 0.62, 
            width = 0.35, height = 0.35)  


