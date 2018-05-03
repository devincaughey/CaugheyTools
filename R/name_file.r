name_file <- function (pre = NULL, post = NULL, ext = NULL, dir = ".",
                       replace = FALSE) {
    p <- paste(pre, collapse = "")
    n <- paste(post, collapse = "")
    e <- paste(".", ext, sep = "")
    d <- format(Sys.Date(), "%y%m%d")
    for (l in seq_along(letters)) {
        if (l > 1) old_file_name <- file_name
        file_name <- paste0(p, d, paste(n, letters[l], sep="-"), e)
        if (!any(grepl(file_name, list.files(dir)))) {
            if (replace) file_name <- ifelse(l > 1, old_file_name, file_name)
            break
        }
    }
    cat("\nFile name:", file_name, "\n\n")
    return(paste0(dir, "/", file_name))
}
