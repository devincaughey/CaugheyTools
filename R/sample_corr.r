#' Draw from the sampling distribution of the correlation coefficient
#' 
sample_corr <- function (hat_r, sample_size, n_draws) {
    hat_z <- r2z(hat_r)
    se <- sqrt(1/(sample_size - 3))
    z_draws <- rnorm(n_draws, hat_z, se)
    r_draws <- z2r(z_draws)
    return(r_draws)
}
