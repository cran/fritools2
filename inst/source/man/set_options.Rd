% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/options.R
\name{set_options}
\alias{set_options}
\title{Set Options For Packages}
\usage{
set_options(..., package_name = .packages()[1], overwrite = TRUE)
}
\arguments{
\item{...}{See \code{\link{options}}.}

\item{package_name}{The package's name.}

\item{overwrite}{[boolean(1)]\cr Overwrite options already set?}
}
\value{
\code{\link[base:invisible]{Invisibly}}
\code{\link[base:TRUE]{TRUE}}.
}
\description{
A convenience function for \code{\link{options}}.
}
\examples{
options("cleanr" = NULL)
defaults <- list(max_file_width = 80, max_file_length = 300,
                 max_lines = 65, max_lines_of_code = 50,
                 max_num_arguments = 5, max_nesting_depth = 3,
                 max_line_width = 80, check_return = TRUE)

set_options(package_name = "cleanr", defaults)
getOption("cleanr")
set_options(package_name = "cleanr", list(max_line_width = 3,
            max_lines = "This is nonsense!"))
set_options(package_name = "cleanr", check_return = NULL, max_lines = 4000)
get_options(package_name = "cleanr")
}
\seealso{
Other option functions: 
\code{\link{get_options}()},
\code{\link{is_force}()}
}
\concept{option functions}
