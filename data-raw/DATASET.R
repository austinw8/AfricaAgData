## code to prepare `production_indices_nigeria` dataset goes here
production_indices_nigeria <- production_indices_africa_data |>
  filter(Area == "Nigeria")

usethis::use_data(production_indices_nigeria, overwrite = TRUE)


production_indices_algeria <- production_indices_africa_data |>
  filter(Area == "Algeria")

usethis::use_data(production_indices_algeria, overwrite = TRUE)
