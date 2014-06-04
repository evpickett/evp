#' plot_res
#'
#' A simple plot of residuals
#' @param base_size sets the base font size for graphs - text sizes are proportional to this value
#' @keywords ggplot2 residuals models
#' @export
#' @examples
#' plot_res(model)
#' 

plot_res <- function(mod) {
  ggplot(mod, aes(.fitted,.resid)) +
    geom_point() +
    geom_hline(y=0) +
    geom_smooth(se=FALSE, method=loess) +
    theme_evp()
}
