# WARNING - Generated by {fusen} from /dev/flat_dev.Rmd: do not edit by hand

#' @title Output Header
#' @param xlsformpath path to the xlsform file used to colllect the data
#' @param var name of the variable to display
#' @export

#' @examples
#' output_header( xlsformpath =  system.file("sample_xlsform.xlsx", package = "kobocruncher"), 
#'               var = "profile")
output_header <- function(xlsformpath = xlsformpath,
                            var) {
  dico <-  kobo_dico(xlsformpath = xlsformpath)
  
  ## getting header levels
  lvl <- stringr::str_count(var, "\\.")
  
  label <- as.data.frame(dico[1]) |>
           dplyr::filter(name == var) |>
           dplyr::pull(label)
  title <- if(is.na(label)) glue::glue("({var})") else label
  # Join multiple strings into a single string.
  hdr <- stringr::str_c(strrep("#", 1+lvl), " ", title, sep = "")
  
  ## Now Printing the headers
  cat("---\n")
  cat("\n\n")
  cat("\n")
  cat(hdr)
  cat("\n\n")
}

