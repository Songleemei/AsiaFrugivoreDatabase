library(here)
library(testthat)
context("Check whether there are errors stored in the reports folder.")

# test_that("printed value is correct", {
#
#   expect_output(str(source("../R_script/datascript.R")),
#                    "Have this script run whatever data cleaning you do")
#
# })

test_that("There are no errors to be fixed.", {

  report_exists  <-  ifelse(file.exists(file.path(here("testthat"), "reports/data_flag_error.csv")), TRUE, FALSE)

  expect_false(report_exists)
  }
)
