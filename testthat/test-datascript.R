library(here)
library(testthat)
context("Check whether there are flagged errors stored inside the reports folder.")

# test_that("printed value is correct", {
#
#   expect_output(str(source("../R_script/datascript.R")),
#                    "Have this script run whatever data cleaning you do")
#
# })

test_that("There is no flgged error", {

  report_do_not_exist  <-  ifelse(file.exists(file.path(here("testthat"), "reports/data_flag_error.csv")), FALSE, TRUE)

  expect_true(report_do_not_exist)
  }
)
