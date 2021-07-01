## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(collapse = TRUE, comment = "#>")

## ----install, eval = FALSE----------------------------------------------------
#  install.packages("impactr")

## ----library------------------------------------------------------------------
library(impactr)

## ----read_acc, eval = FALSE---------------------------------------------------
#  read_acc("path/to/file")

## ----impacr_example-----------------------------------------------------------
impactr_example()

## ----read_example_data--------------------------------------------------------
acc_data <- read_acc(impactr_example("hip-raw.csv"))

## ----acc_data-----------------------------------------------------------------
acc_data

## ----path_example, eval = FALSE-----------------------------------------------
#  # For macOS or Linux
#  read_acc("~/Desktop/accelerometer_data/id_001_raw_acceleration.csv")
#  # For Windows
#  read_acc("C:/Users/username/Desktop/accelerometer_data/id_001_raw_acceleration.csv")

## ----define_region------------------------------------------------------------
acc_data <- define_region(
  data = acc_data, start_time = "15:45:00", end_time = "15:46:00"
)
acc_data

## ----specify_parameters-------------------------------------------------------
acc_data <- specify_parameters(
  data = acc_data, acc_placement = "hip", subj_body_mass = 78
)
acc_data

## ----filter_acc---------------------------------------------------------------
acc_data <- filter_acc(data = acc_data)
acc_data

## ----use_resultant------------------------------------------------------------
acc_data <- use_resultant(data = acc_data)
acc_data

## ----find_peaks---------------------------------------------------------------
acc_data <- find_peaks(data = acc_data, vector = "resultant")
acc_data

## ----predict_loading----------------------------------------------------------
predict_loading(
  data = acc_data,
  outcome = "grf",
  vector = "resultant",
  model = "walking/running"
)

## ----wrap-up, eval = FALSE----------------------------------------------------
#  # Using intermediate steps
#  acc_data <- read_acc(impactr_example("hip-raw.csv"))
#  acc_data <- specify_parameters(
#    data = acc_data, acc_placement = "hip", subj_body_mass = 78
#  )
#  acc_data <- filter_acc(data = acc_data)
#  acc_data <- use_resultant(data = acc_data)
#  acc_data <- find_peaks(data = acc_data, vector = "resultant")
#  acc_data <- predict_loading(
#    data = acc_data,
#    outcome = "grf",
#    vector = "resultant",
#    model = "walking/running"
#  )
#  
#  # Using the base R pipe operator
#  read_acc(impactr_example("hip-raw.csv")) |>
#    specify_parameters(acc_placement = "hip", subj_body_mass = 78) |>
#    filter_acc() |>
#    use_resultant() |>
#    find_peaks(vector = "resultant") |>
#    predict_loading(
#      outcome = "grf",
#      vector = "resultant",
#      model = "walking/running"
#    )

