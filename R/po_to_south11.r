#' @export
#' 
po_to_south11 <- function (po_abbr, dta = CaugheyTools:::states) {
    po_abbr <- as.character(po_abbr)
    south11 <- dta$South11[match(po_abbr, dta$POAbrv)]
    south11 <- ifelse(south11 == 1, "South", "Non-South")
    return(south11)
}
