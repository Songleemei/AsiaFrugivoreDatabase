# print("Have this script run whatever data cleaning you do")

library(here)
library(dplyr)
library(readr)
#library(git2rdata)

# using a git repository
# repo <- repository(".")

raw_data_path <- file.path(here("data-raw"), "data.csv")
base_data <- read.csv(raw_data_path)
#base_data <- read_csv(file.path(here("data-raw"),"data.csv"))

all_period_values_valid <- all(base_data$period < 458)

if (all_period_values_valid == FALSE){
  flag_error <- subset(base_data, period > 458)
  #write_vc(flag_error, file = "testthat/reports/data_flag_error.csv", root = repo, stage = TRUE)
  #write_vc(flag_error, file = file.path(here("testthat"),"reports/data_flag_error.csv"), root = repo, stage = TRUE)
  #write_csv(flag_error, file.path(here("testthat"),"reports/data_flag_error.csv"))
  write.csv(flag_error, file = file.path(here("testthat"), "reports/data_flag_error.csv"), row.names = F)
  #write.csv(flag_error, file = paste0(dirname(getwd()), "/testthat/reports/data_flag_error.csv"), row.names = F)
}

