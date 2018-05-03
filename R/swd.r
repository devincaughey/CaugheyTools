swd <- function (..., print = TRUE) {
  dir <- paste(..., sep = "/")
  if (print) print(dir)
  setwd(dir)
}
