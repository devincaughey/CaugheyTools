icpsr_to_po <- function (icpsr_codes, dta = CaugheyTools::states,
                         ipums = FALSE) {
    icpsr_codes <- as.integer(as.character(icpsr_codes))
    if (ipums) icpsr_codes <- ifelse(icpsr_codes == 98, 55, icpsr_codes)
    as.character(dta$POAbrv[match(icpsr_codes, dta$ICPSRCode)])
}
