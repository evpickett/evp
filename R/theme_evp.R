#' theme_evp
#'
#' A theme for ggplot created for Evan's favourite options
#' @param base_size sets the base font size for graphs - text sizes are proportional to this value
#' @keywords ggplot2 theme
#' @export
#' @examples
#' ggplot(data, aes(x=x,y=y)) +
#'  geom_point() +
#'  theme_evp()

theme_evp <- function(base_size = 18, base_family = "") {
  # Starts with theme_grey and then modify some parts
  theme_grey(base_size = base_size, base_family = base_family) %+replace%
    theme(
      axis.ticks        = element_line(colour = "black"),
      legend.key        = element_rect(colour = "grey80"),
      panel.background  = element_rect(fill = "white", colour = NA),
      panel.border      = element_rect(fill = NA, colour = "grey50"),
      panel.grid.minor  = element_line(colour = "white"),
      strip.background  = element_rect(fill = "grey80", colour = "grey50", size = 0.2),
      panel.border      = element_blank(),
      axis.line         = element_line(colour = "black"),
      axis.text         = element_text(size = rel(0.8), colour = "grey10")
    )
}