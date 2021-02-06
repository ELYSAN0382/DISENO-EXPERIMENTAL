setwd("C:/Users/SOPORTE/Desktop/POSTGRADOiNVISTIGACIÓN/PRACTICA 2")
df=read.csv("SPRAY.csv",sep=";")
df

str(df)

df$MARCA=as.factor(df$MARCA)
str(df)

boxplot(y~MARCA,data=df)

modelo=aov(y~MARCA,data=df)
summary(modelo)

1-pf(2.793,2,15)

qqnorm(modelo$residuals)
qqline(modelo$residuals)

shapiro.test(modelo$residuals)


library("car")
leveneTest(y~MARCA,data=df)

plot(modelo$fitted.values,modelo$residuals)
abline(h=0)