#' @export
#' 
stars_to_bold <- function (text) {
    out <- gsub("([[:digit:]]+)\\.([[:digit:]]+)\\^\\{\\*+\\}",
                "\\\\textbf{\\1}.\\\\textbf{\\2}", text)
    cat(out, sep = "\n")
    invisible(out)
}
