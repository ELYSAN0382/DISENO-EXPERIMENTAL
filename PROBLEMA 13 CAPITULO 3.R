setwd("C:/Users/SOPORTE/Desktop/POSTGRADOiNVISTIGACIÓN/PRACTICA 2")
df=read.csv("CARROS.csv",sep=";")
df

str(df)

df$TEMPERATURAS=as.factor(df$TEMPERATURAS)
str(df)

boxplot(MODULOS~TEMPERATURAS,data=df)

modelo=aov(MODULOS~TEMPERATURAS,data=df)
summary(modelo)


1-pf(68.06,4,15)

tk=TukeyHSD(modelo)
tk

qqnorm(modelo$residuals)
qqline(modelo$residuals)

shapiro.test(modelo$residuals)


library("car")
leveneTest(MODULOS~TEMPERATURAS,data=df)

plot(modelo$fitted.values,modelo$residuals)
abline(h=0)