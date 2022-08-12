#' Set Betting API's Credentials
#'
#' @param token Betting API's token.
#'
#' @export
#'
bettingapir_auth <- function(token = Sys.getenv("BETTINGAPI_TOKEN")) {
  if (nchar(token) == 0) {
    stop("Please provide your Betting API credentials.", call. = FALSE)
  }
  assign("token", token, envir = .state)
}
token <- function() get("token", envir = .state)
