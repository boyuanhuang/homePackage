
#' Draw multi name plot
#'
#' @param names
#'
#' @return ggplot graph
#' @export
#' @import dplyr tidyr ggplot2 prenoms dygraphs
#' @examples
draw_names <- function(names){
    prenoms %>% group_by(prenoms$year, prenoms$name) %>%
      summarise(total = sum(n)) %>%
      filter(prenoms$name %in% names) %>%
      spread(key = prenoms$name, value = total) %>%
      dygraph()
  }
