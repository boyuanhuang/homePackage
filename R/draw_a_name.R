#' draw a plot with a name as input
#'
#' @param a_name
#'
#' @return ggplot graph
#' @export
#' @import assertthat ggplot2 dplyr tidyr prenoms
#' @examples
draw_a_name <- function(a_name){
  assertthat::assert_that(is.character(a_name))
  prenoms %>% filter(prenoms$name == a_name) %>%
    group_by(prenoms$year) %>%
    summarize(count=n()) %>%
    ggplot(aes(x=prenoms$year, y= count))+ geom_line()
}
