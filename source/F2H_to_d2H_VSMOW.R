#' @param F2H Fractional abundance of deuterium
#' @param permil boolean, whether to report the delta value in permil
#' @return delta value relative to VSMOW

F2H_to_d2H_VSMOW <- function(F2H, permil) {
  R2H_std = 0.00015576
  R2H = F2H / (1 - F2H)
  d2H_VSMOW = (R2H / R2H_std) - 1
  
  if(permil) {
    return(d2H_VSMOW * 1000)
  } else {
    return(d2H_VSMOW)
  }
}
