# Assignment: EXERCISE 5.2
# Name: Cable, Kimberly
# Data: 2022-4-16

#imports
library(readxl)
library(dplyr)
library(magrittr)
library(purrr)
theme_set(theme_minimal())

## Set the working directory to the root of your DSC 520 directory
setwd("/Kim/Data Science/Bellevue Univ/BU_DSC/DSC520/Week5")

## Check your current working directory
getwd()

## Load the housing file
housing_df = read_excel("data/week-6-housing.xlsx")
housing_df %>% head(4)

# a. Using the dplyr package, use the 6 different operation to analyze/transform
#    the data

#    GroupBy
housing_df %>% 
    group_by(zip5) %>% 
    summarize(mean(Sale_Price))


#    Summarize
housing_df %>% 
    summarize(AveragePrice = mean(Sale_Price),
            MedianPrice = median(Sale_Price))


#    Mutate
housing_df %>% 
    select(Sale_Price, square_feet_total_living) %>% 
    mutate(Price_per_Sq_Ft = Sale_Price / square_feet_total_living)

housing_df %>% 
    select(Sale_Price, zip5) %>% 
    group_by(zip5) %>% 
    mutate(zipMean = mean(Sale_Price), percentage_diff = ( 
        (Sale_Price - zipMean) / zipMean) * 100)


#    Filter
housing_df %>% 
    filter(Sale_Price >= 1000000)


#    Select
housing_df %>% 
    select(Sale_Price, zip5)
housing_df %>% 
    select(starts_with('S'))

#    Arrange
housing_df %>% 
    group_by(zip5) %>% 
    summarize(AvgPrice = mean(Sale_Price)) %>% 
    arrange(AvgPrice)


# b. using the purrr package - perform 2 functions on your dataset

#    map_dbl
housing_df %>% select(Sale_Price) %>% map_dbl(mean)
housing_df %>% map_dbl(mean)

#    map_chr
housing_df %>% map_chr(class)

# c. Use the cbind and rbind function on your dataset

#    cbind

#    rbind

# d. Split a string, then concatenate the results back together

#########

#########

