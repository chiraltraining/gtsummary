library(tidyverse)
library(gtsummary)
library(gt)


trial %>%
  select(trt, age, grade) %>%
  tbl_summary(by = trt) %>%
  add_p() %>% 
  as_gt() %>% 
  tab_caption("Table 1. Characteristics of respondents")
  gtsave("scripts/example.docx")

 
trial |>
  select(trt, age, grade) |> 
  tbl_summary(by = trt) |> 
  add_p() |> 
  as_gt() |> 
  tab_caption("Table 1. Characteristics of respondents") |> 
  tab_footnote("An example of footnotes")
  
