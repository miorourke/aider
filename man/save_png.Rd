% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/save_png.R
\name{save_png}
\alias{save_png}
\title{Export visualisation as PNG}
\usage{
save_png(path)
}
\arguments{
\item{path}{File path and filename for visualisation WITHOUT the file extension}
}
\value{
A PNG file with dpi = 300 and height = 8in and width = 13in
}
\description{
Wrapper around ggsave function. Run this function directly after you've created your visualisation
}
\examples{
\dontrun{
save_png('output/myplot')
}

}
