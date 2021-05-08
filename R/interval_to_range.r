#' @export
#' 
interval_to_range <- function (x) {
    xx <- stringr::str_split(x, ",")
    xx1 <- sapply(xx, function (yy) yy[1])
    xx2 <- sapply(xx, function (yy) yy[2])
    min <- ifelse(stringr::str_detect(xx1, "\\["),
                  as.integer(stringr::str_sub(xx1, 2, -1)),
                  as.integer(stringr::str_sub(xx1, 2, -1)) + 1L)
    max <- ifelse(stringr::str_detect(xx2, "\\]"),
                  as.integer(stringr::str_sub(xx2, , -2)),
                  as.integer(stringr::str_sub(xx2, 1, -2)) - 1L)
    paste0(min, "-", max)
}
