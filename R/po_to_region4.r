#' @export
#' 
po_to_region4 <- function (po_abbr, dta = CaugheyTools:::states) {
    po_abbr <- as.character(po_abbr)
    region4 <- as.character(dta$REGION4[match(po_abbr, dta$POAbrv)])
    return(region4)
}
