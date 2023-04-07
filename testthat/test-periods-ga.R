#library(here)
library(testthat)
library(dplyr)
library(readr)
#library(git2rdata)


context("Checks that whether all values in period variable are valid.")

base_data <- read_csv("../data-raw/data.csv")

test_that("Period values are valid.", {

    all_period_values_valid <- all(base_data$period < 465)

    expect_true(all_period_values_valid)
  }
)

