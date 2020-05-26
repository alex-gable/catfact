# set up vcr
library("vcr")
invisible(vcr::vcr_configure(dir = "../fixtures"))

Sys.setenv(R_CHECK_CASSETTE_NAMES = TRUE)

cat(paste("Does this run check cassettes for duplicates?:",
          Sys.getenv("R_CHECK_CASSETTE_NAMES")), "\n\n")

if (as.logical(Sys.getenv("R_CHECK_CASSETTE_NAMES"))) {
  vcr::check_cassette_names()
}
