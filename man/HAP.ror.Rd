\name{HAP.ror}
\alias{HAP.ror}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
ROR
}
\description{
perform ROR for sequence-based association analysis
}
\usage{
HAP.ror(case.sub, ctl.sub, lib.sub, lib.sub.names, alpha = 0.01, ref.level = NA, display.proc = TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{case.sub}{
case subjects, two columns for two haplotypes
}
  \item{ctl.sub}{
control subjects, two columns for two haplotypes
}
  \item{lib.sub}{
the alleles library contains allele sequences for those only appear in the case and control samples
}
  \item{lib.sub.names}{
the corresponding names of the alleles (mapping of full name in the library and short name in samples)
}
  \item{alpha}{
significance level
}
  \item{ref.level}{
name of the reference allele, "NA" use the most common allele as reference, can also specify allele name, for DRB1, it is "101"

}
  \item{display.proc}{
display the grouping process or not? default is TRUE
}
}
\details{
This function performs ROR for sequence-based association analysis 
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
\item{dev.list }{deviances for all steps of ROR}
\item{AIC.list }{AICs for all steps of ROR}
\item{df.list }{degree of freedom for all steps of ROR}
\item{records }{the record of the whole ROR process}
\item{deleted.snps.ls }{the history of SNP deletions for all steps of ROR}
\item{deleted.snps }{the final vector of deleted SNPs}
\item{grp.result }{the final grouping result}
\item{model.summary}{the GLM model summary for the final grouping}
}
\references{
Zhao, L.P. and Huang, X. Recursive organizer (ROR): an analytic framework for sequence-based association analysis. Human Genetics, 2013
}
\author{
Lue Ping Zhao and Xin Huang \cr
Maintainer: Xin Huang <xhuang.fhcrc@gmail.com>
}
%\note{
%%  ~~further notes~~
%}

%% ~Make other sections like Warning with \section{Warning }{....} ~

%\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
%}
\examples{
library("HAP.ROR")
data(case.sub)
data(ctl.sub)
data(lib.sub)
data(lib.sub.names)
ror.res <- HAP.ror(case.sub, ctl.sub, lib.sub, lib.sub.names, alpha=0.01, ref.level="101");

# grouping result:
round(ror.res$dev.list, 2);
round(ror.res$AIC.list, 2);
ror.res$df.list;
ror.res$deleted.snps;
ror.res$grp.result;
ror.res$significant;
# model summary:
ror.res$model.summary;

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
