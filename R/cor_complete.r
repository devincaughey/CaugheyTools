cor_complete <- function (x, y = NULL) {
    if (!any(complete.cases(data.frame(x, y)))) NA_real_
    else cor(x = x, y = y, use = "complete.obs")
}
