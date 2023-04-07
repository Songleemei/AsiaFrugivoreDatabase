# print("Have this script run whatever data cleaning you do")
library(here)
library(dplyr)
library(readr)
library(git2rdata)

# using a git repository
repo <- repository(".")
base_data <- read_csv("data-raw/data.csv")

#base_data <- read_csv(file.path(here("data-raw"),"data.csv"))

all_period_values_valid <- all(base_data$period < 1000)

if (all_period_values_valid == FALSE){
  flag_error <- subset(base_data, period > 1000)
  #write_vc(flag_error, file = "testthat/reports/data_flag_error.csv", root = repo, stage = TRUE)
  #write_vc(flag_error, file = file.path(here("testthat"),"reports/data_flag_error.csv"), root = repo, stage = TRUE)
  write_csv(flag_error, file.path(here("testthat"),"reports/data_flag_error.csv"))
}



