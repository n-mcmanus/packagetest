#' Automobile Power Generation
#'
#' This function computes power generated from a
#' vehicle based on the following parameters:
#' @param m: the mass of the vehicle in kg
#' @param v: the vehicle speed in m/s
#' @param sa: the surface area of the vehicle in m^2
#' @param crolling: the rolling resistive coefficient (default = 0.015)
#' @param c_drag: the aerodynamic resistive coefficient (default = 0.3)
#' @param g: the acceleration due to gravity (default = 9.8 m/s^2)
#' @param p_air: the density of air (default = 1.2 kg/m^3)
#' @author Nick Mc
#' @examples apg(m=1200, v = 40, sa = 10)
#' @return power (W/s)



apg <- function(m, v, sa, crolling = 0.015, g = 9.8, p_air = 1.2, c_drag = 0.3) {

  # equaiton for finding power
  power <- crolling * m * g * v + 0.5 * sa * p_air * c_drag * v^3

  return(power)
}
