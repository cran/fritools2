if (interactive()) {
  pkgload::load_all()
  library("tinytest")
}


load_internal_functions("fritools2")
result <- environmentName(environment(throw))
expectation <- "fritools2"
expect_identical(result, expectation)
