#' @export
#' 
list_latest <- function (str = ".*", dir = ".", ext = ".*") {
    all_files <- list.files(dir)
    matching_files <- all_files[grepl(str, all_files) & grepl(ext, all_files)]
    dates <- sub(".*([0-9]{6}).*", "\\1", matching_files)
    return(matching_files[which.max(dates)])
}
