% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/post_estimation.R
\name{rhat}
\alias{rhat}
\title{Display R-hat values for parameters of interest}
\usage{
rhat(posterior, pars = NULL)
}
\arguments{
\item{posterior, }{object of class \code{rstan::\link[rstan]{stanfit}}.}

\item{pars}{character vector, a vector of model parameter names e.g.
\code{c("theta", "zeta[1]", "alpha")}. See Details below.}
}
\value{
Returns a named vector of R-hat values for the parameters specified by the
\code{pars} argument.
}
\description{
\code{rhat} calculates R-hat statistics for each specifide parameter of
interest.
}
\section{Details}{


\code{rhat} is a helper function for users to quickly caluclate a common
convergence statistic, R-hat, for each parameter. These statistics can
be calculated for the following parameters inputted (alone or in combination)
by the user: \code{"theta", "theta_mu", "theta_sigma", "zeta", "alpha",
"alpha_mu", "alpha_sigma", "gamma", "gamma_sigma", "omega_domain",
"omega_user"}. Indexed variants of these parameter names can also be
retrieved (e.g. \code{c("theta[4]", "zeta[1]")}.
}

\examples{
\dontrun{
simulated_data <- simulate_data()
posterior <- mediascores(Y = simulated_data$Y, group = simulated_data$group,
                         anchors = simulated_data$anchors,
                         variational = TRUE)
rhat(posterior, pars = c("theta", "zeta"))
}
}
