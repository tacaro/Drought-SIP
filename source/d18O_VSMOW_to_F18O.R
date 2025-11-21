#' @param d18O_VSMOW a delta value for 18H relative to VSMOW
#' @param permil whether the delta value is expressed in permil notation
#' @return isotope fractional abundance of 18O

d18O_VSMOW_to_F18O <- function(d18O_VSMOW, permil) {
  R18O_std = 0.00200520 # 18O/16O isotope ratio for VSMOW

  if (permil) {
    R18O = ((d18O_VSMOW / 1000) + 1) * R18O_std
  } else {
    R18O = (d18O_VSMOW + 1) * R18O_std
  }

  F18O = R18O / (1 + R18O)
  return(F18O)
}

#d18O_VSMOW_to_F18O(0, TRUE) # 0.002001187
