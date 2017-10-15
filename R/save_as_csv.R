#' Save data frame into a csv file
#'
#' @param dataset
#' @param filename
#' @param row.names
#' @param ...
#'
#' @return invisible("/path/of/saved/csv)
#' @import assertthat
#' @importFrom utils write.csv2
#' @export
#'
#' @examples
save_as_csv <- function(dataset,filename, row.names=FALSE, ...){
  assertthat::assert_that(has_extension(filename,"csv"))
  assertthat::assert_that(is.dir(dirname(filename)))
  assertthat::assert(is.writeable(dirname(filename)))
  assertthat::assert_that(not_empty(dataset))
  assertthat::assert_that(is.data.frame(dataset))

  write.csv2(x=dataset, file=filename, row.names = row.names, ...)

  invisible(normalizePath(filename))
}
