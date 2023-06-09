if (interactive()) {
  pkgload::load_all()
  library("tinytest")
}

expect_error(fritools2:::throw("Hello, error!"))
