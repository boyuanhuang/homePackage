
#' Import multiple csv files
#'
#' @param folder_path to the folder containing csv files to import
#'
#' @return a list
#' @export
#' @importFrom utils read.csv2
#' @import assertthat
#' @examples
#' \dontrun{
#'
#' my_csv_reader("../../path/to/folder")}
#'
my_csv_reader <- function(folder_path){
  assertthat::assert_that(dir.exists(folder_path))
  file_list <- list.files(path = folder_path, pattern ="*.csv$", full.names = TRUE )
  assert_that(length(file_list) !=0)
  res <-lapply(file_list, read.csv2)
  return(res)
}
