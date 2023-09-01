library(tidyverse)
library(gtsummary)
library(gt)

qol_data <- read.csv(here::here("data/HRoL.csv"))


qol_data |> 
  select(1:8) |> 
  tbl_summary(missing = "no", 
              statistic = list(all_continuous() ~ "{mean} ({sd})")) |> 
  modify_header(label ~ "**Variables**") |> 
  as_gt()
  
