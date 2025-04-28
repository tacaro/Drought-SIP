#' @param R2H 2H isotope ratio of 2H / 1H
#' @param permil boolean, whether to return the result in permil notation
#' @return d2H in delta notation against VSMOW standard

R2H_to_d2H_VSMOW <- function(R2H, permil) {
  R2H_std = 0.00015576
  d2H_VSMOW = ((R2H) / (R2H_std)) - 1
  if(permil) {
    return(d2H_VSMOW * 1000)
  } else {
    return(d2H_VSMOW)
  }
}


