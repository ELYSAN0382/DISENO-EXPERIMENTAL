x=c(28.3,26.8,26.6,26.5,28.1,24.8,27.4,26.2,29.4,28.6,24.9,25.2,30.4,27.7,27.0,26.1,28.1,26.9,28.0,27.6,25.6,29.5,27.6,27.3,26.2,27.7,27.2,25.9,26.5,28.3,26.5,29.1,23.7,29.7,26.8,29.5,28.4,26.3,28.1,28.7,27.0,25.5,26.9,27.2,27.6,25.5,28.3,27.4,28.8,25.0,25.3,27.7,25.2,28.6,27.9,28.7)
n=length(x)
n
media=mean(x)
std=sd(x)
media
std

hist(x,freq=FALSE,col="red")
lines(density(x),col="green",lwd=3)

tmin=qt(0.025,n-1)
tmax=qt(0.975,n-1)
tmin
tmax

media+tmin*std/sqrt(n)
media+tmax*std/sqrt(n)
tmax*std/sqrt(n)

media=mean(x)

(n-1)*var(x)/qchisq(0.025,n-1)
(n-1)*var(x)/qchisq(0.975,n-1)





