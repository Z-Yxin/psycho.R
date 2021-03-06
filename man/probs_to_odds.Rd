% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/probs_to_odds.R
\name{probs_to_odds}
\alias{probs_to_odds}
\title{Convert probabilities to (log)odds.}
\usage{
probs_to_odds(probs, log = FALSE)
}
\arguments{
\item{probs}{Probabilities values in vector or dataframe.}

\item{log}{Compute log odds (such as in logistic models)?}
}
\description{
Convert probabilities to (log)odds.
}
\examples{
library(psycho)
probs_to_odds(0.75)


}
\author{
\href{https://dominiquemakowski.github.io/}{Dominique Makowski}
}
