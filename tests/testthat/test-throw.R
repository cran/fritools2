testthat::test_that("throw the fritools2 exception", {
                        error_message <- "hello, testthat"
                        string <- "hello, testthat"
                        testthat::expect_error(fritools2:::throw(string),
                            error_message)
}
)
