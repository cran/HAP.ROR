\name{deletion}
\alias{deletion}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
deletion searching
}
\description{
function of searching for the next grouping given deleted SNPs
}
\usage{
deletion(lib, lib.names, case.sub, ctl.sub, aic.now, dev.now, df.now, rank = FALSE, cut = -1, delete.snp = -1, ref = "NA", alpha = 0.05, step = 0)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{lib}{
the alleles library contains allele sequences for those only appear in the case and control samples
}
  \item{lib.names}{
the corresponding names of the alleles
}
  \item{case.sub}{
case subjects, two columns for two haplotypes
}
  \item{ctl.sub}{
control subjects, two columns for two haplotypes
}
  \item{aic.now}{
aic for the current model
}
  \item{dev.now}{
deviance for the current model
}
  \item{df.now}{
degree of freedom for the current model
}
  \item{rank}{
numbers of pairs with top similarity scores to be investigate
if FALSE, then deviance is calculated for the step-wise merger, then option "alpha" and "step" is used

}
  \item{cut}{
cutoff for similarity score to be consider, default is -1, means all scores above 0
}
  \item{delete.snp}{
a vector of position of deleted SNPs
}
  \item{ref}{
allele names for the reference level, the default reference level (ref="NA") is the most common allelels
}
  \item{alpha}{
family-wise error, used for deviance only
}
  \item{step}{
index for how many deletions have been carried so far
}
}
%\details{
%%  ~~ If necessary, more details than the description above ~~
%}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
\item{del }{position of deleted SNPs}
\item{aic }{AIC}
\item{df }{degree of freedom}
\item{dev }{deviance}
\item{stop }{1: no merge found}
\item{record }{the record of the searching path}

}
%\references{
%% ~put references to the literature/web site here ~
%}
\author{
Xin Huang
}
%\note{
%%  ~~further notes~~
%}

%% ~Make other sections like Warning with \section{Warning }{....} ~

%\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
%}
%\examples{
%}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
