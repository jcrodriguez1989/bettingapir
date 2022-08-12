#' `{bettingapir}`: An Interface to Betting API for R
#'
#' `{bettingapir}` provides users a range of functions designed to communicate with Betting API
#' from R.
#'
"_PACKAGE"

.state <- new.env(parent = emptyenv())

# Load Telnyx API tokens from environment variable.
assign("token", Sys.getenv("BETTINGAPI_TOKEN"), envir = .state)

api_url <- function() "https://api.betting-api.com/"
