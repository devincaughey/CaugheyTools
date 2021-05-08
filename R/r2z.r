#' Apply Fisher's transformation of correlation cofficient to z-score 
#' 
#' @export
#' 
r2z <- function (r) 1/2 * (log(1 + r) - log(1 - r))
