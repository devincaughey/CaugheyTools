#' @export
#' 
po_to_name <- function (po_abbr, dta = CaugheyTools:::states) {
    po_abbr <- as.character(po_abbr)
    names <- dta$Name[match(po_abbr, dta$POAbrv)]
    return(names)
}
