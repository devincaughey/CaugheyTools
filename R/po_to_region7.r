#' @export
#' 
po_to_region7 <- function (po_abbr, dta = CaugheyTools:::states) {
    po_abbr <- as.character(po_abbr)
    region7 <- as.character(dta$REGION7[match(po_abbr, dta$POAbrv)])
    return(region7)
}
