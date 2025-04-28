#' @param d2H_VSMOW a delta value for 2H relative to VSMOW
#' @param permil whether the delta value is expressed in permil notation
#' @return isotope fractional abundance of deuterium 2H

d2H_VSMOW_to_F2H <- function(d2H_VSMOW, permil) {
  R2H_std = 0.00015576
  
  if(permil) {
    R2H = ((d2H_VSMOW/1000) + 1) * R2H_std
  } else {
    R2H = (d2H_VSMOW + 1) * R2H_std
  }
  
  F2H = R2H / (1 + R2H)
  return(F2H)

    
}


