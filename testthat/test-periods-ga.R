library(testthat)
library(dplyr)
#library(utils)
library(readr)
library(git2rdata)
#library(colorDF)

context("Checks that all values in period variable are valid.")

base_data <- read_csv("../data-raw/data.csv")

all_period_values_valid <- all(base_data$period < 465)

if (all_period_values_valid == FALSE){
  flag_error <- subset(base_data, period > 465)
  # write_vc(flag_error, file = "/data-output/data_flag_error.csv", root = ".")
  # write_csv(flag_error, "../data-output/data_flag_error.csv")
  write.csv(flag_error, "../data-output/data_flag_error.csv", row.names = F)
  # For non-error one (warning), can name the file as "data_flag_warning.csv")
}

test_that(
  desc = "Period values are valid.",
  code = {
    expect_true(all_period_values_valid)
  }
)

