library(here)
library(testthat)
# context("checks that datascript is working")

# test_that("printed value is correct", {
#
#   expect_output(str(source("../R_script/datascript.R")),
#                    "Have this script run whatever data cleaning you do")
#
# })

test_that("There are flgged errors", {

  report_exists  <-  ifelse(file.exists(file.path(here("testthat"), "reports/data_flag_error.csv")), TRUE, FALSE)

  expect_false(report_exists)
})
