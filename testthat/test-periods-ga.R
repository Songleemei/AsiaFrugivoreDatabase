library(here)
library(testthat)
library(dplyr)
library(readr)
#library(git2rdata)


context("Checks that whether all values in period variable are valid.")
#base_data <- read_csv("https://github.com/Songleemei/AsiaFrugivoreDatabase/blob/main/data-raw/data1.csv")
base_data <- read_csv("../data-raw/data.csv")

test_that(
  desc = "Period values are valid.",
  code = {
    all_period_values_valid <- all(base_data$period < 1000)
    expect_true(all_period_values_valid)
  }
)

