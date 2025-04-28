#' @param d2H_VSMOW delta value relative to VSMOW
#' @param permil  whether the value is expressed in permil units or not
#' @return R2H isotope ratio where R = 2H / 1H

d2H_VSMOW_to_R2H <- function(d2H_VSMOW, permil) {
  R2H_std = 0.00015576
  
  if(permil) {
    R2H = ((d2H_VSMOW/1000) + 1) * R2H_std
  } else {
    R2H = (d2H_VSMOW + 1) * R2H_std
  }
  return(R2H)
}

d2H_VSMOW_to_R2H(0, permil = TRUE)
