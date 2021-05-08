#' @export
#' 
name_to_po <- function (name, dta = CaugheyTools:::states) {
    name <- tolower(as.character(name))
    po_abbrevs <- dta$POAbrv[match(name, tolower(dta$Name))]
    return(po_abbrevs)
}
