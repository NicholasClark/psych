\name{error.dots}
\alias{error.dots}

\title{Show a  dot.chart with error bars for different groups or variables}
\description{Yet one more of the graphical ways of showing data with error bars for different groups.
A dot.chart with error bars for different groups or variables is found using from \code{\link{describe}},  \code{\link{describeBy}}, or  \code{\link{statsBy}}.
}
\usage{
error.dots(x, var = NULL, se = NULL, group = NULL, sd = FALSE, head = 12, tail = 12,
 sort = TRUE, decreasing = TRUE, main = NULL, alpha = 0.05, eyes = FALSE, min.n = NULL,
 max.labels = 40, labels = NULL, groups = NULL, gdata = NULL, cex = par("cex"),
  pt.cex = cex, pch = 21, gpch = 21, bg = par("bg"), color = par("fg"),
   gcolor = par("fg"), lcolor = "gray", xlab = NULL, ylab = NULL, xlim = NULL, ...)
}

\arguments{
  \item{x}{A data frame or matrix of raw data, or the resulting object from \code{\link{describe}},  \code{\link{describeBy}}, or  \code{\link{statsBy}} 

}
  \item{var}{The variable to show}

  \item{se}{Source of a standard error}


  \item{group}{A grouping variable, if desired. Not implemented.}
  \item{sd}{if FALSE, confidence intervals in terms of standard errors, otherwise draw one standard deviation}
  \item{head}{The number of largest values to report}
  \item{tail}{The number of smallest values to report}     
  \item{sort}{Sort the groups/variables by value}
  \item{decreasing}{Should they be sorted in increasing or decreasing order (from top to bottom)}
  \item{main}{The caption for the figure}
  \item{alpha}{p value for confidence intervals}
  \item{eyes}{Draw catseyes for error limits}
  \item{min.n}{If using describeBy or statsBy, what should be the minimum sample size to draw}
  \item{max.labels}{Length of labels  (truncate after this value)}
  \item{labels}{Specify the labels versus find them from the row names}
  \item{groups}{ignored}

  \item{gdata}{ignored}

  \item{cex}{The standard meaning of cex for graphics}
  \item{pt.cex}{ignored}
  \item{pch}{Plot character}
  \item{gpch}{ignored}
  \item{bg}{background color}
  \item{color}{Color}
  \item{gcolor}{ignored}
  \item{lcolor}{ignored?}
  \item{xlab}{Label the x axis, if NULL, the variable name is used}
  \item{ylab}{If NULL, then the group rownames are used}
  \item{xlim}{If NULL, then calculated to show nice values}
  \item{\dots}{And any other graphic parameters we have forgotten}
}
\details{
Adapted from the dot.chart function to include error bars and to use the output of\code{\link{describe}},  \code{\link{describeBy}}, and  \code{\link{statsBy}}   
To speed up multiple plots, the function can work from the output of a previous run.  Thus describeBy will be done and the results can be show for multiple variables}
\value{
Returns (invisibily) either a describeBy or describe object
}
\references{Used in particular for showing http:\\sapa-project.org output.}
\author{William Revelle}


\seealso{
 \code{\link{describe}},  \code{\link{describeBy}}, or  \code{\link{statsBy}} as well as  \code{\link{error.bars}},  \code{\link{error.bars.by}}, or  \code{\link{statsBy}} 
}
\examples{
error.dots(bfi[1:25])

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{multivariate}
\keyword{ hplot }% __ONLY ONE__ keyword per line
