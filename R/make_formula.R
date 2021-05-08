#' @export
#' 
make_formula <- function (var_list) {
    form_char_vec <- vector("character", length(var_list))
    for (l in seq_along(var_list)) {
        form_char_vec[l] <- paste(var_list[[l]], collapse = " + ")
    }
    form_char <- do.call(paste, list(form_char_vec, collapse = " ~ "))
    as.formula(form_char)    
}
