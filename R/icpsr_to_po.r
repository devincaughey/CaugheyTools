icpsr_to_po <- function (stcodes, dta = states, ipums = FALSE) {
  stcodes <- as.integer(as.character(stcodes))
  if (ipums) stcodes <- ifelse(stcodes == 98, 55, stcodes)
  as.character(dta$POAbrv[match(stcodes, dta$ICPSRCode)])
}
