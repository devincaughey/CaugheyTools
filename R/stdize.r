#' @export
#' 
stdize <- function (x, na.rm = TRUE) {
    (x - mean(x, na.rm = TRUE)) / sd(x, na.rm = TRUE)
}
