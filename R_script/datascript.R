# print("Have this script run whatever data cleaning you do")

library(dplyr)
library(readr)
library(git2rdata)

base_data <- read_csv("../data-raw/data.csv")

all_period_values_valid <- all(base_data$period < 465)

if (all_period_values_valid == FALSE){
  flag_error <- subset(base_data, period > 465)
  write.csv(flag_error, "./data-output/data_flag_error.csv", row.names = F)
}

