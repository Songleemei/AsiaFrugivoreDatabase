# print("Have this script run whatever data cleaning you do")
library(here)
library(dplyr)
library(readr)
library(git2rdata)


base_data <- read_csv("../data-raw/data1.csv")

all_period_values_valid <- all(base_data$period < 1000)

if (all_period_values_valid == FALSE){
  flag_error <- subset(base_data, period > 1000)
  write.csv(flag_error, "testthat/reports/data_flag_error.csv", row.names = F)
}



