% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot_select_one.R
\name{plot_select_one}
\alias{plot_select_one}
\title{Plotting Select one variable

Note that if the column order is set in the xlsform choice part, the variable will be de factor considered as ordinal and the default ordering will not be done based on frequency}
\usage{
plot_select_one(datapath, xlsformpath, var, showcode = FALSE)
}
\arguments{
\item{datapath}{path to the file with the data format as extracted from kobo with dot as group separator and xml header}

\item{xlsformpath}{path to the xlsform file used to cole}

\item{var}{name of the variable to display}

\item{showcode}{display the code}
}
\description{
Plotting Select one variable

Note that if the column order is set in the xlsform choice part, the variable will be de factor considered as ordinal and the default ordering will not be done based on frequency
}
\examples{
plot_select_one(datapath = system.file("data.xlsx", package = "kobocruncher"),
              xlsformpath =  system.file("sample_xlsform.xlsx", package = "kobocruncher"), 
              var = "profile.country")
}
