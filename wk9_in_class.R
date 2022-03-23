

## LOAD DATA ##


library(carData)
library(tidyverse)
library(openintro)
library(stevedata)
library(ggthemes)


pottery <- as_tibble(Pottery)
airmiles <- as_tibble(airmiles)
heights <- as_tibble(fheights)
sales <- as_tibble(yugo_sales)


#### EXAMPLES ##

### ONE DIMENSION ##

## GEOM_HISTOGRAM ##

## CHANGE BINWIDTH

## GEOM_DENSITY ##

# CHANGE TRANSPARENCY #

## GEOM_AREA ##

## GEOM_BAR ##

# PLOT MEANS #

## GEOM_POINT ##

## GEOM_LINE ##

## GEOM_LINE REGRESSION ##

#### EXPLORATORY STATS ##

### GEOM_BOXPLOT ##

### GEOM_VIOLIN  ##

#### AESTHETICS ##


### THEMES ##

library(ggthemes)

theme_few_plus <- function() {
  theme_few() %+replace%
    theme(
      panel.grid.major = element_blank(),
      panel.grid.minor = element_blank(),
      panel.border = element_blank(),
      panel.background = element_blank(),
      axis.line.x = element_line(color = "black", size = 1),
      axis.line.y = element_line(color = "black", size = 1),
      axis.text.x = element_text(colour = "black"),
      axis.text.y = element_text(colour = "black")
    )
}

### AESTHETIC GROUPINGS ##

## COLOR, SHAPE ##

## CHANGE COLOR SCALE ##

## CHANGE TITLES ##

## GET RID OF FLOATING AXES ##

## SAVING PLOTS IN GGPLOT ##

#### CORRPLOT ##


## CREATE CORRELATION MATRIX ##


## PLOT MATRIX ##


#### META DIGITIZE ##


## PLOT DATA ##




