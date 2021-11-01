#' Set proxy
#'
#' set proxy for http https and socks5
#'
#' @param config_info output from \code{\link[config_proxy_mix]{proxy4you}}
#' or \code{\link[config_proxy_mix]{proxy4you}}
#'
#' @return set proxy for http https and socks5
#' @export
#'
#' @examples
#' \dontrun{
#' proxy()
#' proxy(
#' config_proxy_mix(ip = "127.0.0.1", port = "7890"))
#' proxy(
#' config_proxy(
#' http = "http://127.0.0.1:7890",
#' https = "http://127.0.0.1:7890",
#' socks5 = "socks5://127.0.0.1:7891"))
#' }
proxy <- function(config_info = config_proxy_mix()) {
  Sys.setenv(http_proxy=config_info[['http']],
             https_proxy=config_info[['https']],
             all_proxy=config_info[['socks5']])
  message("Proxy info: ")
  message(Sys.getenv(c("https_proxy","http_proxy","all_proxy")))
  check_ip()
}

#' Reset proxy
#'
#' unset proxy http https and socks5
#'
#' @return unset proxy http https and socks5
#' @export
#'
#' @examples
unproxy <- function() {
  Sys.unsetenv(c("https_proxy","http_proxy","all_proxy"))
  message("Proxy was cleaned!")
  message(Sys.getenv(c("https_proxy","http_proxy","all_proxy")))
  check_ip()
}
