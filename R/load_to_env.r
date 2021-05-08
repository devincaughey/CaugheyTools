#' @export
#' 
load_to_env <- function (RData, env = new.env()) {
    load(RData, env)
    return(env)
}
