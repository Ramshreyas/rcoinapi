getExchanges <- function(exchangeId = NULL) {

  if(is.list(exchangeId)) {

    endpoint <- EXCHANGES_ENDPOINT

    executeRequest("GET", endpoint, params = list("filter_exchange_id" = listToStringArray(exchangeId)))

  } else {

    endpoint <- paste0(EXCHANGES_ENDPOINT, exchangeId)

    executeRequest("GET", endpoint)

  }

}

getExchangeIcons <- function(sizeText) {

  endpoint <- paste0(EXCHANGES_ENDPOINT, "icons/", sizeText)

  executeRequest("GET", endpoint)

}

getAssets <- function(assetId = NULL) {

  if(is.list(assetId)) {

    endpoint <- ASSETS_ENDPOINT

    executeRequest("GET", endpoint, params = list("filter_asset_id" = listToStringArray(assetId)))

  } else {

    endpoint <- paste0(ASSETS_ENDPOINT, assetId)

    executeRequest("GET", endpoint)

  }

}

getAssetIcons <- function(sizeText) {

  endpoint <- paste0(ASSETS_ENDPOINT, "icons/", sizeText)

  executeRequest("GET", endpoint)

}

getCryptoSymbols <- function(symbolId = NULL,
                             exchangeId = NULL,
                             assetId = NULL) {

  if(is.list(symbolId) & is.list(exchangeId) & is.list(assetId)) {

    endpoint <- SYMBOLS_ENDPOINT

    executeRequest("GET", endpoint, params = list("filter_symbol_id" = listToStringArray(symbolId), "filter_exchange_id" = listToStringArray(exchangeId), "filter_asset_id" = listToStringArray(assetId)))

  } else {

    endpoint <- paste0(SYMBOLS_ENDPOINT, exchangeId)

    executeRequest("GET", endpoint)

  }

}
