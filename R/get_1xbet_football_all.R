#' Get 1XBET All Footbal Bets
#'
#' @importFrom httr content GET
#' @importFrom jsonlite fromJSON
#'
#' @export
#'
get_1xbet_football_all <- function() {
  fromJSON(content(GET(
    paste0(api_url(), "1xbet/football/line/all"),
    query = list(token = token())
  ), as = "text"))
}
