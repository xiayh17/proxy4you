#' Generating configuration information for the proxy
#'
#' Suitable for mixed proxies, i.e. where ip and port are consistent across different protocols.
#'
#' @param ip address, default 192.168.3.15
#' @param port mix port, default 7890
#'
#' @return a character vector contains proxy for each protocols (http, https, socks5)
#'
#' @family config
#'
#' @examples
#' config_proxy_mix(ip = "127.0.0.1", port = "7890")
config_proxy_mix <- function(ip = "192.168.3.15",
                             port = "7890") {

  # argus = c("https_proxy","http_proxy","all_proxy")
  protocols = c("http", "https", "socks5")
  prefix = c("http", "http", "socks5")

  proxys <- paste0(prefix,"://",ip,":",port)
  names(proxys) <- protocols
  return(proxys)
}

#' Generating configuration information for the proxy
#'
#' For cases where each protocol has a different ip or port.
#'
#' @param http address:port, default http://192.168.3.15:7890
#' @param https address:port, default http://192.168.3.15:7890
#' @param socks5 address:port, default http://192.168.3.15:7891
#'
#' @return a character vector contains proxy for each protocols (http, https, socks5)
#'
#' @family config
#'
#' @examples
#' config_proxy(http = "http://127.0.0.1:7890",
#'              https = "http://127.0.0.1:7890",
#'              socks5 = "socks5://127.0.0.1:7891")
config_proxy <- function(http = "http://192.168.3.15:7890",
                         https = "http://192.168.3.15:7890",
                         socks5 = "socks5://192.168.3.15:7891") {

  protocols = c("http", "https", "socks5")
  proxys <- paste0(c(https, http, socks5))
  names(proxys) <- protocols
  return(proxys)
}
