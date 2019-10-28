#' @title Predicts Stock Price Movement for Given Stock Symbol
#'
#' @description This package predicts whether the stock price at tommorow's market close would be higher or lower compared to today's closing place.
#'
#' @param symbol
#'
#' @return NULL
#'
#' @examples  stock_predict('AAPL')
#'
#' @export stock_predict
#
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Install Package:           'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'
cred_gen <- function(consumer_key = NULL, consumer_secret = NULL, access_token = NULL, access_secret = NULL) {
  if(!is.null(consumer_key) && !is.null(consumer_secret) && !is.null(access_token) && !is.null(access_secret)){
    print(paste("Hello world !!", consumer_key))
    setup_twitter_oauth(consumer_key, consumer_secret, access_token, access_secret)
    tw = searchTwitter('@Google', n = 25)
    d = twListToDF(tw)
  }else{
    print("This method does not allow null value")
  }
}
