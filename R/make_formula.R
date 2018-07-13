make_formula <- function (xvars, yvar = NULL) {
    xform <- paste(xvars, collapse = " + ")
    as.formula(paste(yvar, xform, sep = " ~ "))    
}
