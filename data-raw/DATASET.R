## code to prepare `DATASET` dataset goes here

#usethis::use_data(DATASET, overwrite = TRUE)

library(data.table)
diabetes <- fread("data-raw/diabetes.csv")
diabetes[, Outcome := as.factor(Outcome)]
usethis::use_data(diabetes, overwrite = TRUE)
checkhelper::use_data_doc("diabetes")
