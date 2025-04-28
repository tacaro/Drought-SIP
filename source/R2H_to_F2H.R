#' @param R2H 2R isotope ratio where 2R = 2H / 1H
#' @return 2F isotope fractional abundance where 2F = 2H / 1H + 2H

R2H_to_F2H <- function(R2H) {
  F2H = R2H / (1 + R2H)
  return(F2H)
}