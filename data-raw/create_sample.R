set.seed(20)
library(tibble)
ForType=c('SW','PJ', 'PW', 'PR', "MXC",'MXH','INT','HD','OR','SW','PJ', 'PW', 'PR', "MXC",'MXH','INT','HD','OR','SW','PJ')
H0=rnorm (20, mean = 12, sd = 2)
Dt=sample(5:7,20,replace = T)
sampledat<-data_frame(ForType=ForType,H0=H0,Dt=Dt)

usethis::use_data(sampledat, compress='xz')
