Gt=scan(file='m-GLBTs.txt')
Gtemp=ts(Gt,frequency=12,start=c(1880,1))
plot(Gtemp,xlab='year',ylab='temperature',type='l') 
acf(diff(Gt),lag=36)
pacf(diff(Gt),lag=36)

m1=arima(Gt,order=c(1,1,2))
m1

acf(m1$residuals,lag=36)  
m1=arima(Gt,order=c(1,1,2),seasonal=list(order=c(0,0,1),period=24))
m1
tsdiag(m1,gof=36)

