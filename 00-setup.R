renv::install(c(
  # CRAN
  "xaringan", "tidyverse", "usethis", "devtools", "blogdown", "knitr",
  "markdown", "spelling", "here", "distill", "fontawesome",

  # GitHub
  "gadenbuie/xaringanthemer",
  "gadenbuie/metathis",
  "gadenbuie/xaringanExtra",
  "hadley/emo"
))


usethis::use_description(check_name = FALSE)
usethis::use_readme_rmd()
usethis::use_ccby_license()
usethis::use_code_of_conduct("corrado.lanera@ubep.unipd.it")

usethis::git_vaccinate()



renv::status()
renv::snapshot()

# mandatory packages to compile the slides
list(
  "xaringan"
) |>
  purrr::walk(usethis::use_package)

# optional packages used within the project
list(
  "usethis", "renv", "purrr"
) |>
  purrr::walk(usethis::use_package, type = "Suggests")
