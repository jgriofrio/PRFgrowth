#' Height growth estimation
#'
#' @description Estimate the height at time 1 based on initial height and period length. See manuscript describing the modeling approach
#' @param ForT Forest type identification codes.
#' @param H0 height at time 0
#' @param Dt period length (years)
#' @importFrom dplyr mutate
#' @importFrom dplyr case_when
#' @return Height value at time 1 (H1) in meters
#' @export
#'
#' @examples
#' Hmodel(H0=10, ForT='PJ',Dt=7)

# Hmodel<-function(df,ForT,H0,Dt){
#
#      df %>%
#         dplyr:: mutate(H1 = case_when(
#           ForT== 'SW' ~ 31.5339*(1-(1-(H0/31.5339)^0.9810)* exp(-0.0289*Dt))^(1/0.9810),
#           ForT== 'PJ' ~ 27.6120*(1-(1-(H0/27.6120)^0.8118)* exp(-0.0337*Dt))^(1/0.8118),
#           ForT== 'PW' ~ 44.1374*(1-(1-(H0/44.1374)^0.9344)* exp(-0.0111*Dt))^(1/0.9344),
#           ForT== 'PR' ~ 35.0058*(1-(1-(H0/35.0058)^0.9507)* exp(-0.0198*Dt))^(1/0.9507),
#           ForT== "MXC"~ 30.4399*(1-(1-(H0/30.4399)^0.9682)* exp(-0.0144*Dt))^(1/0.9682),
#           ForT== 'MXH'~ 37.9677*(1-(1-(H0/37.9677)^0.9394)* exp(-0.0110*Dt))^(1/0.9394),
#           ForT== 'INT'~ 36.6768*(1-(1-(H0/36.6768)^0.8736)* exp(-0.0146*Dt))^(1/0.8736),
#           ForT== 'HD' ~ 34.1655*(1-(1-(H0/34.1655)^0.8563)* exp(-0.0106*Dt))^(1/0.8563),
#           ForT== 'OR' ~ 33.1844*(1-(1-(H0/33.1844)^0.7080)* exp(-0.0149*Dt))^(1/0.7080),
#           TRUE ~ as.numeric(NA)))
# }

#Hmodel(df=dat[c(1,2)],ForT=dat$ForType,H1=dat$H1,Dt=7)


Hmodel <- function(H0, ForT,Dt) {

  #checking data format
  if(!is.numeric(H0))         stop("'H0' must be type numeric")
  if(!is.character(ForT))     stop("'ForT' must be type character")
  if (!(ForT %in% Hmod$ForT)) {stop(paste0("Heigh model not available for ",ForT))}

  Hmod_param <- Hmod[Hmod$ForT == ForT,]

  eval(parse(text=Hmod_param$Equation))


}


