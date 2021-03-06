% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/config_proxy.R
\name{config_proxy}
\alias{config_proxy}
\title{Generating configuration information for the proxy}
\usage{
config_proxy(
  http = "http://192.168.3.15:7890",
  https = "http://192.168.3.15:7890",
  socks5 = "socks5://192.168.3.15:7891"
)
}
\arguments{
\item{http}{address:port, default http://192.168.3.15:7890}

\item{https}{address:port, default http://192.168.3.15:7890}

\item{socks5}{address:port, default http://192.168.3.15:7891}
}
\value{
a character vector contains proxy for each protocols (http, https, socks5)
}
\description{
For cases where each protocol has a different ip or port.
}
\examples{
config_proxy(http = "http://127.0.0.1:7890",
             https = "http://127.0.0.1:7890",
             socks5 = "socks5://127.0.0.1:7891")
}
\seealso{
Other config: 
\code{\link{config_proxy_mix}()}
}
\concept{config}
