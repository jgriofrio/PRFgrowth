#
# Hgrowth_model<-read.csv('Hgrowth_coeff.csv')
# dat<-read.csv('dat.csv')


#' Height growth rate index estimation
#' @description Estimate height growth index based on the height increment and at height reference
#' @param df dataframe with input values
#' @param ForT Forest type ID
#' @param H0 height at time 0
#' @param H1 height at time 1
#' @param Hr Height reference
#' @param Dt period length (years)
#' @importFrom dplyr mutate
#' @importFrom dplyr case_when
#' @return height growth rate index
#' @export
#'
#' @examples HGindex(df=dat2,ForT=dat2$ForType,H0=dat2$H0,H1=dat2$H1,Hr=15,Dt=7)
HGindex<-function(df,ForT,H0,H1,Hr,Dt){

  df %>%
    mutate(HGindex = case_when(
                  ForT== 'SW' ~ ((H1-H0)/Dt)*(Hr/H0)*((((31.5339)/Hr)^0.9810)-1)/(((31.5339/H0)^0.9810)-1),
                  ForT== 'PJ' ~ ((H1-H0)/Dt)*(Hr/H0)*((((27.6120)/Hr)^0.8118)-1)/(((27.6120/H0)^0.8118)-1),
                  ForT== 'PW' ~ ((H1-H0)/Dt)*(Hr/H0)*((((44.1374)/Hr)^0.8118)-1)/(((44.1374/H0)^0.9344)-1),
                  ForT== 'PR' ~ ((H1-H0)/Dt)*(Hr/H0)*((((35.0058)/Hr)^0.8118)-1)/(((35.0058/H0)^0.9507)-1),
                  ForT== "MXC"~ ((H1-H0)/Dt)*(Hr/H0)*((((30.4399)/Hr)^0.8118)-1)/(((30.4399/H0)^0.9682)-1),
                  ForT== 'MXH'~ ((H1-H0)/Dt)*(Hr/H0)*((((37.9677)/Hr)^0.8118)-1)/(((37.9677/H0)^0.9394)-1),
                  ForT== 'INT'~ ((H1-H0)/Dt)*(Hr/H0)*((((36.6768)/Hr)^0.8118)-1)/(((36.6768/H0)^0.8736)-1),
                  ForT== 'HD' ~ ((H1-H0)/Dt)*(Hr/H0)*((((34.1655)/Hr)^0.8118)-1)/(((34.1655/H0)^0.8563)-1),
                  ForT== 'OR' ~ ((H1-H0)/Dt)*(Hr/H0)*((((33.1844)/Hr)^0.8118)-1)/(((33.1844/H0)^0.7080)-1),
                  TRUE ~ as.numeric(NA)))
}

#HGindex(df=dat2,ForT=dat2$ForType,H1=dat2$H1,H2=dat2$H2,Hr=15,Dt=7)
