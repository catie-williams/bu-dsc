# Assignment: EXERCISE 5.2
# Name: Cable, Kimberly
# Data: 2022-4-16

#imports
library(readxl)
theme_set(theme_minimal())

## Set the working directory to the root of your DSC 520 directory
setwd("/Kim/Data Science/Bellevue Univ/BU_DSC/DSC520/Week5")

## Check your current working directory
getwd()

## Load the housing file
housing_df = read_excel("data/week-6-housing.xlsx")
