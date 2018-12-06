FROM rocker/r-ver:3.5.1
LABEL maintainer="karthik"
RUN export DEBIAN_FRONTEND=noninteractive; apt-get -y update \
  && apt-get install -y git-core \
	libcurl4-openssl-dev \
	libssl-dev \
	make
RUN ["install2.r", "assertthat", "backports", "base64enc", "callr", "cli", "crayon", "curl", "desc", "devtools", "digest", "FNN", "formatR", "fs", "futile.logger", "futile.options", "gstat", "intervals", "lambda.r", "lattice", "magrittr", "memoise", "pkgbuild", "pkgload", "prettyunits", "processx", "ps", "R6", "Rcpp", "remotes", "rjson", "rlang", "rprojroot", "rstudioapi", "semver", "sessioninfo", "sp", "spacetime", "stringi", "stringr", "testthat", "usethis", "withr", "xts", "zoo"]
RUN ["installGithub.r", "karthik/coyote@acad4665e673c084114ab18df1d281687d06ecf8", "richfitz/stevedore@c9531428df052eaf8185d9235f2f8db5b2a6008a", "tidyverse/glue@35c61e93f6844c757672574972e59920fb9f0cf6"]
WORKDIR /payload/
CMD ["R"]
