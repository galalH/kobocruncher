% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/kobo_cruncher.R
\name{kobo_cruncher}
\alias{kobo_cruncher}
\title{Crunch a variable}
\usage{
kobo_cruncher(
  datapath = datapath,
  xlsformpath = xlsformpath,
  type,
  name,
  disaggregation = "",
  correlate = "",
  showcode = TRUE
)
}
\arguments{
\item{datapath}{path to the file with the data format as extracted from kobo with dot as group separator and xml header}

\item{xlsformpath}{path to the xlsform file used to colllect the data}

\item{type}{type of the variable to display}

\item{name}{name of the variable to display}

\item{disaggregation}{vector with the potential variables to use for crosstabulation}

\item{correlate}{vector with the potential variables to use for testing statistical association}

\item{showcode}{display the code}
}
\description{
Crunch a variable
}
\examples{
kobo_cruncher(datapath = system.file("data.xlsx", package = "kobocruncher"),
              xlsformpath =  system.file("sample_xlsform.xlsx", package = "kobocruncher"), 
              type = "select_one", 
              name = "profile.country",
              showcode = TRUE)
}
