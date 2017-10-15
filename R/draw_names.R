
#' Draw multi name plot
#'
#' @param names
#'
#' @return ggplot graph
#' @export
#' @import dplyr tidyr ggplot2 prenoms
#' @examples
draw_names <- function(names){
  prenoms %>% filter(prenoms$name %in% names) %>%
    group_by(prenoms$year,prenoms$name) %>%
    summarize(count=n()) %>%
    ggplot(aes(x=prenoms$year, y=count,color=prenoms$name))+ geom_line()
}
