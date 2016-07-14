station_info_url <- "https://api-core.thehubway.com/gbfs/en/station_information.json"
station_status_url <- "https://api-core.thehubway.com/gbfs/en/station_status.json"

#' Retrieve the current status of all Hubway stations
#'
#' @export
get_stations <- function() {

  ss <- httr::GET(station_status_url)
  stop_for_status(ss)

  si <- httr::GET(station_info_url)
  httr::stop_for_status(ss)

  ss_resp <- httr::content(ss, as="text", encoding="UTF-8")
  ss_resp <- jsonlite::fromJSON(ss_resp)
  ss_df <- tibble::as_tibble(ss_resp$data[[1]])

  si_resp <- httr::content(si, as="text", encoding="UTF-8")
  si_resp <- jsonlite::fromJSON(si_resp)
  si_df <- tibble::as_tibble(si_resp$data[[1]])

  dplyr::left_join(ss_df, si_df, by="station_id")

}
