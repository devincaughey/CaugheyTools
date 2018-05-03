po_to_icpsr <- function (po_abbr, dta = CaugheyTools::states,
                         ipums = FALSE) {
    po_abbr <- as.character(po_abbr)
    icpsr_codes <- dta$ICPSRCode[match(po_abbr, dta$POAbrv)]
    icpsr_codes <- as.integer(as.character(icpsr_codes))
    if (ipums) icpsr_codes <- ifelse(icpsr_codes == 55, 98, icpsr_codes)
    return(icpsr_codes)
}
