% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/develop_test.R
\name{develop_test}
\alias{develop_test}
\title{Develop Unit Testing for a Code File}
\usage{
develop_test(file, force_runit = FALSE, force_tiny = TRUE)
}
\arguments{
\item{file}{The path to the code file, assuming the working directory to be
the root of an R package under development.}

\item{force_runit}{If there is no corresponding \pkg{RUnit} test file:
create one?}

\item{force_tiny}{If there is no corresponding \pkg{tinytest} test file:
create one?}
}
\value{
\code{\link[base:invisible]{Invisibly}}
\code{\link[base:NULL]{NULL}}.
}
\description{
Looking at the output of
\code{\link[covr:zero_coverage]{covr::zero_coverage}}, I want to open a code
file an the corresponding unit testing file.
}
\examples{
\dontrun{
    develop_test(file = "R/develop_test.R", force_runit = TRUE)
    unlink("inst/tinytest/test_develop_test.R")
    unlink("inst/runit_tests/runit-develop_test.R")
}
}
\seealso{
Other file utilities: 
\code{\link{clipboard_path}()},
\code{\link{delete_trailing_blank_lines}()},
\code{\link{delete_trailing_whitespace}()},
\code{\link{file_copy}()},
\code{\link{file_modified_last}()},
\code{\link{file_save}()},
\code{\link{find_files}()},
\code{\link{get_mtime}()},
\code{\link{get_unique_string}()},
\code{\link{is_files_current}()},
\code{\link{is_path}()},
\code{\link{paths}},
\code{\link{search_files}()},
\code{\link{split_code_file}()},
\code{\link{touch}()}
}
\concept{file utilities}
\concept{test_helpers}
