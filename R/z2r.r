#' Reverse Fisher's transformation of correlation cofficient to z-score 
#' 
#' @export
#' 
z2r <- function (z) (exp(2*z) - 1) / (exp(2*z) + 1)
