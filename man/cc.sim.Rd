\name{cc.sim}
\alias{cc.sim}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
case control simulation
}
\description{
simulating case-control data given causal amino acids/haplotype alleles
}
\usage{
cc.sim(n.ctrl, n.case, beta0, beta1, case.sub, ctl.sub, lib.sub, lib.sub.names, risk.type = "AA", risk.inx = 2, risk.names = c("301", "302"), min.count = 10, ctl.only = FALSE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{n.ctrl}{
number of control samples desired to generate
}
  \item{n.case}{
number of case samples desired to generate
}
  \item{beta0}{
the coefficient of intercept for logistic model
}
  \item{beta1}{
the coefficient of the causal SNP for logistic model
}
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
the corresponding names of the alleles
}
  \item{risk.type}{
risk.type="AA": simulated from given amino acid position as shown in matrix lib.sub, use risk.inx to input position
risk.type="allele":simulated from given risk alleles, use risk.names=c("301", "302") to specified those alleles
}
  \item{risk.inx}{
the given amino acid position
}
  \item{risk.names}{
allele names
}
  \item{min.count}{
use to calculate the warning if the selected alleles have too small frequencies
}
  \item{ctl.only}{
use control only to simulate or not
}
}
%\details{
%%  ~~ If necessary, more details than the description above ~~
%}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
\item{y }{phenotype}
\item{x }{simulated samples}
\item{risk.names }{the input risk allele names}
\item{select.freq }{simulated allele frequencies}

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
