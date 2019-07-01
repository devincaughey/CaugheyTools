name_to_po <- function (name, dta = CaugheyTools::states) {
    name <- as.character(name)
    po_abbrevs <- dta$POAbrv[match(name, dta$Name)]
    return(po_abbrevs)
}
