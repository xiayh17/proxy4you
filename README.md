
<!-- README.md is generated from README.Rmd. Please edit that file -->

# proxy4you

<!-- badges: start -->
<!-- badges: end -->

The goal of proxy4you is to Set Proxy in R Console

## Installation

You can install the development version of proxy4you from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("xiayh17/proxy4you")
```

or [Gitee](https://gitee.com/)

``` r
# install.packages("devtools")
devtools::install_git("https://gitee.com/xiayh17/proxy4you")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(proxy4you)
## basic example code
```

Start proxy by `proxy()`

``` r
proxy()
#> Proxy info:
#> http://192.168.3.15:7890http://192.168.3.15:7890socks5://192.168.3.15:7890
#> check what your ip is:
#> IPv4:
#> 91.243.81.104
#> Details:
#> {
#>     "organization": "MoreneHost",
#>     "longitude": 6.1661,
#>     "timezone": "Europe/Luxembourg",
#>     "isp": "MoreneHost",
#>     "offset": 3600,
#>     "asn": 199524,
#>     "asn_organization": "G-Core Labs S.A.",
#>     "country": "Luxembourg",
#>     "ip": "91.243.81.104",
#>     "latitude": 49.7498,
#>     "continent_code": "EU",
#>     "country_code": "LU"
#> }
```

Clean proxy by `unproxy()`

``` r
unproxy()
#> Proxy was cleaned!
#> 
#> check what your ip is:
#> IPv4:
#> 58.253.50.104
#> Details:
#> {
#>     "organization": "China Unicom Guangdong",
#>     "longitude": 110.5702,
#>     "city": "Zhongshan",
#>     "timezone": "Asia/Shanghai",
#>     "isp": "China Unicom Guangdong",
#>     "offset": 28800,
#>     "region": "Guangdong",
#>     "asn": 17816,
#>     "asn_organization": "China Unicom IP network China169 Guangdong province",
#>     "country": "China",
#>     "ip": "58.253.50.104",
#>     "latitude": 21.3232,
#>     "continent_code": "AS",
#>     "country_code": "CN",
#>     "region_code": "GD"
#> }
```
