
# Packages --------------------------------------------------------

renv::install(c(
  ## CRAN
  "xaringan", "tidyverse", "usethis", "devtools", "blogdown", "knitr",
  "markdown", "spelling", "here", "distill", "fontawesome", "miniUI",

  ## GitHub
  "gadenbuie/xaringanthemer",
  "gadenbuie/metathis",
  "gadenbuie/xaringanExtra",
  "hadley/emo"
))


# Project setup ---------------------------------------------------

usethis::use_description(check_name = FALSE)
usethis::use_readme_rmd()
usethis::use_ccby_license()
usethis::use_code_of_conduct("corrado.lanera@ubep.unipd.it")

usethis::git_vaccinate()


# Requirements ----------------------------------------------------

## mandatory packages to compile the slides
list(
  "xaringan", "fontawesome", "knitr"
) |>
  purrr::walk(usethis::use_package)

list(
  "xaringanExtra", "xaringanthemer"
) |>
  purrr::walk(usethis::use_dev_package)


## optional packages used within the project
list(
  "usethis", "renv", "purrr", "devtools", "miniUI"
) |>
  purrr::walk(usethis::use_package, type = "Suggests")

devtools::document(roclets = c('rd', 'collate', 'namespace'))


# Isolation -------------------------------------------------------

renv::status()
renv::snapshot()
