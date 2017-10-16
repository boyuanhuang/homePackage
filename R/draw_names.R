
#' Draw multi name plot
#'
#' @param names
#'
#' @return ggplot graph
#' @export
#' @import dplyr tidyr ggplot2 prenoms dygraph
#' @examples
draw_names_dygraph <- function(names){
    prenoms %>% group_by(year, name) %>%
      summarise(total = sum(n)) %>%
      filter(name %in% names) %>%
      spread(key = name, value = total) %>%
      dygraph()
  }
