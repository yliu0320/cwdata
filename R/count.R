#' Count the number of countries in a dataset
#'
#' @param data A dataset containing a `country` column.
#'
#' @examples
#' n_countries(key_crop_yields)
#'
#' @export
n_countries <- function(data){
  dplyr::n_distinct(data$country)
}
